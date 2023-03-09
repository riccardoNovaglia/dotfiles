alias wait_and_open='f() {wait-port --output silent $1; open http://localhost:$1};f'

alias gprune='git prune; git remote prune origin; git branch --merged master | grep -v "^[ *]*master$" | xargs git branch -d'
alias gprune_main='git prune; git remote prune origin; git branch --merged main | grep -v "^[ *]*main$" | xargs git branch -d'
alias gprune_orphans="git branch -vv | grep ': gone]'|  grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -D"
alias gupstash='git stash; gup; git stash pop'
alias gmup='git checkout master; gup;'
alias gbranch='gmup; gcb $1'
alias reb='gmup; git checkout -; git rebase master;'
alias recent='git recent;' # git config --global alias.recent 'branch --sort=-committerdate --format="%(committerdate:relative)%09%(refname:short)"'
alias recent-nodate='git recent-nodate;' # git config --global alias.recent-nodate 'branch --sort=-committerdate --format="%(refname:short)"'
alias wip='recent;'
alias gp='git push --force-with-lease'
alias gpullforce='git fetch; git reset --hard origin/$(git branch --show-current)'
alias continue='git add .; GIT_EDITOR=true git rebase --continue' # Continue, override editor with just true so that it immediately returns.

fzf-git-branch() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    git recent-nodate | fzf --height 50% --ansi --no-multi --preview-window right:65% \
            --preview 'echo {}'
}
fzf-git-checkout() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    local branch

    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi

    # If branch name starts with 'remotes/' then it is a remote branch. By
    # using --track and a remote branch name, it is the same as:
    # git checkout -b branchName --track origin/branchName
    if [[ "$branch" = 'remotes/'* ]]; then
        git checkout --track $branch
    else
        git checkout $branch;
    fi
}
alias gcof='fzf-git-checkout'
alias gf='gcof'

alias run="yarn run"
alias r="run"
alias t="yarn test"
alias i="yarn install"

alias charm="pycharm"

alias zshrc="vi ~/.zshrc && source ~/.zshrc"
alias z="zshrc"
alias zup="source ~/.zshrc"

alias aliases="less ~/projects/me/dotfiles/aliases.zsh"
alias aliases_up="vi ~/projects/me/dotfiles/aliases.zsh"

source ~/projects/me/dotfiles/octo.aliases.zsh
