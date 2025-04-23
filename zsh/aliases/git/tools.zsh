alias ,tmp_skip_hooks="mv .git/hooks/pre-commit .git/hooks/pre-commit.bak; mv .git/hooks/post-commit .git/hooks/post-commit.bak"
alias ,reenable_hooks="mv .git/hooks/pre-commit.bak .git/hooks/pre-commit; mv .git/hooks/post-commit.bak .git/hooks/post-commit"

alias lg='lazygit'

alias absorb='git config --local index.skipHash false; git reset; git add .; GIT_EDITOR=true git absorb --and-rebase; git config --local index.skipHash true;'
