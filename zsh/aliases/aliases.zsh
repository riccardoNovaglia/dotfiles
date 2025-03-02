source ~/projects/me/dotfiles/zsh/aliases/common.zsh
source ~/projects/me/dotfiles/zsh/aliases/git.zsh
source ~/projects/me/dotfiles/zsh/aliases/kraken.zsh


alias aliases="cat ~/projects/me/dotfiles/zsh/aliases/* | grep \"alias \" | fzf"
alias aliases_search="aliases"
alias aliases_edit="fleet ~/projects/me/dotfiles/zsh/aliases"
alias aliases_update="source ~/projects/me/dotfiles/zsh/aliases/aliases.zsh"

