alias wait_and_open='f() {wait-port --output silent $1; open http://localhost:$1};f'

alias prune_branches='git branch --merged master | grep -v "^[ *]*master$" | xargs git branch -d'
alias gupstash='git stash; gup; git stash pop'
alias gmup='git checkout master; gup;'
alias reb='gmup; git checkout -; git rebase master;'
alias recent='git recent;' # git config --global alias.recent 'branch --sort=-committerdate --format="%(committerdate:relative)%09%(refname:short)"'
alias wip='recent;'
alias gp='git push --force-with-lease'

alias run="yarn run"
alias r="run"
alias t="yarn test"
alias i="yarn install"

alias zshrc="vi ~/.zshrc && source ~/.zshrc"
alias z="zshrc"
alias zup="source ~/.zshrc"
alias aliases="less ~/projects/me/dotfiles/aliases.zsh"
alias octo_aliases="less ~/projects/me/dotfiles/octo.aliases.zsh"

source ~/projects/me/dotfiles/octo.aliases.zsh
