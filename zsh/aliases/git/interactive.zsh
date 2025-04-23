alias recent='git recent;' # git config --global alias.recent 'branch --sort=-committerdate --format="%(committerdate:relative)%09%(refname:short)"'
alias recent-nodate='git recent-nodate;' # git config --global alias.recent-nodate 'branch --sort=-committerdate --format="%(refname:short)"'

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
alias gg='fzf-git-checkout'

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
alias gd='fzf-git-delete-branches'

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
alias grb='fzf-git-rebase'