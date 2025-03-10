alias repo_default_branch='git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@";'

alias gprune='git prune; git remote prune origin; git gc --prune=now; git branch --merged $(repo_default_branch) | grep -v "^[ *]*$(repo_default_branch)$" | xargs git branch -d; ,a'
alias gprune_main='git prune; git remote prune origin; git branch --merged $(repo_default_branch) | grep -v "^[ *]*main$" | xargs git branch -d'
alias gprune_orphans="git branch -vv | grep ': gone]'|  grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -D"

alias gupstash='git stash; gup; git stash pop'
alias gmup='git fetch origin $(repo_default_branch):$(repo_default_branch); git checkout $(repo_default_branch);'
alias gmupp='git checkout $(repo_default_branch); git fetch; gup;'
alias reb='gmup; git checkout -; git rebase $(repo_default_branch);'

alias gbranch='gmup; gcb $1'
alias gpr="git push >&1 | grep /pull/new | awk '{print $2}' |xargs open -u"
alias gup="git pull --rebase"

alias gcommitshutup='ga .; GIT_EDITOR=true git commit --no-verify --no-edit'
alias gamendshutup='gcommitshutup --amend'

alias gyolo='ga .; gamendshutup; git push -f'

alias recent='git recent;' # git config --global alias.recent 'branch --sort=-committerdate --format="%(committerdate:relative)%09%(refname:short)"'
alias recent-nodate='git recent-nodate;' # git config --global alias.recent-nodate 'branch --sort=-committerdate --format="%(refname:short)"'
alias wip='git commit -am "WIP" --no-verify;'
alias gp='git push --force-with-lease'

alias gpullforce='git fetch; git reset --hard origin/$(git branch --show-current)'
alias gpf='gpullforce'

alias continue='git add .; GIT_EDITOR=true git rebase --continue' # Continue, override editor with just true so that it immediately returns.
alias skip='git rebase --skip'

alias absorb='git config --local index.skipHash false; git reset; git add .; GIT_EDITOR=true git absorb --and-rebase; git config --local index.skipHash true;'

fzf-git-branch() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    git recent-nodate | fzf --ansi --no-multi --no-preview
}
fzf-git-branch-multi() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    git recent-nodate | fzf --ansi --multi --no-preview | tr '\n' ' '
}
fzf-git-checkout() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    local branch

    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi

    git checkout $branch;
}
fzf-git-rebase() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    local branch

    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi

    git rebase $branch;
}
fzf-git-delete-branches() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    local branch

    branch=$(fzf-git-branch-multi)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi

    echo $branch | xargs git branch -D;
}
alias gcof='fzf-git-checkout'
alias gf='gcof'
alias gg='gf'

alias gd='fzf-git-delete-branches'

alias grb='fzf-git-rebase'

alias g1='git checkout HEAD~1'

push_and_open_pr() {
    git push;

    sleep 1;

    REPO_NAME=$(git remote get-url --push origin | sed s/git@github.com:// | sed s/.git//);
    REPO_URL="http://github.com/$REPO_NAME";

    CURRENT_BRANCH=$(git branch --show-current);
    URL="$REPO_URL/pull/new/$CURRENT_BRANCH";

    open -u $URL;
}
alias ppr='push_and_open_pr'

function tinyfix() {
    gmup; git checkout -b $1; git add .; git commit -m $2; ppr;
}

alias tinyfix='tinyfix'

alias ,make_patch="git diff | cat | pbcopy;"
alias ,reverse_patch="pbpaste | git apply;"
alias ,apply_patch="pbpaste | git apply --reverse;"

alias ,tmp_skip_hooks="mv .git/hooks/pre-commit .git/hooks/pre-commit.bak; mv .git/hooks/post-commit .git/hooks/post-commit.bak"
alias ,reenable_hooks="mv .git/hooks/pre-commit.bak .git/hooks/pre-commit; mv .git/hooks/post-commit.bak .git/hooks/post-commit"

alias lg='lazygit'