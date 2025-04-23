alias reb='gmup; git checkout -; git rebase $(repo_default_branch);'

alias gamendshutup='ga .; GIT_EDITOR=true git commit --no-verify --no-edit --amend'

alias continue='git add .; GIT_EDITOR=true git rebase --continue' # Continue, override editor with just true so that it immediately returns.
alias skip='git rebase --skip'

alias gyolo='ga .; gamendshutup; git push -f'

alias wip='git commit -am "WIP" --no-verify;'
