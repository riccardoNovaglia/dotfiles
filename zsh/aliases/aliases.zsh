source ~/projects/me/dotfiles/zsh/aliases/common.zsh
source ~/projects/me/dotfiles/zsh/aliases/git.zsh
source ~/projects/me/dotfiles/zsh/aliases/kraken.zsh
source ~/projects/me/dotfiles/zsh/aliases/js.zsh

alias aliases="cat ~/projects/me/dotfiles/zsh/aliases/* | grep \"alias \" | fzf"
alias aliases-search="aliases"
alias aliases-edit="fleet ~/projects/me/dotfiles/zsh/aliases"
alias aliases-update="source ~/projects/me/dotfiles/zsh/aliases/aliases.zsh"
alias aliases-update="source ~/projects/me/dotfiles/zsh/aliases/aliases.zsh"
