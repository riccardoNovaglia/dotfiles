alias ,make_patch="git diff | cat | pbcopy;"
alias ,reverse_patch="pbpaste | git apply;"
alias ,apply_patch="pbpaste | git apply --reverse;"