alias repo_default_branch='git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@";'

pull-default-branch() {
    CURRENT_BRANCH=$(git branch --show-current);
    DEFAULT_BRANCH=$(repo_default_branch);
    if [[ "$CURRENT_BRANCH" = "$DEFAULT_BRANCH" ]]; then
        echo "Already on main branch, pulling changes"
        gup;
        return;
    fi

    git fetch origin $DEFAULT_BRANCH:$DEFAULT_BRANCH; git checkout $DEFAULT_BRANCH;
}
alias gmup='pull-default-branch'


alias gup="git pull --rebase"
alias gpullforce='git fetch; git reset --hard origin/$(git branch --show-current)'


alias gbranch='gmup; gcb $1'
alias gupstash='git stash; gup; git stash pop'


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

alias tinyfix='gmup; git checkout -b $1; git add .; git commit -m $2; ppr;'

rename_branch() {
    CURRENT_BRANCH=$(git branch --show-current);
    git push origin --delete $CURRENT_BRANCH

    git branch -m $1
    git branch --set-upstream-to=origin/$1
}
alias gbranch_rename='rename_branch'