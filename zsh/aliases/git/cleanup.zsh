alias gprune='git prune; git remote prune origin; git gc --prune=now; git branch --merged $(repo_default_branch) | grep -v "^[ *]*$(repo_default_branch)$" | xargs git branch -d; ,a'
alias gprune_orphans="git branch -vv | grep ': gone]'|  grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -D"
