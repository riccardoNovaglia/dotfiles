# Built-in
plugins=(autojump git)

# git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins+=(zsh-syntax-highlighting)

# git clone https://github.com/ptavares/zsh-direnv $ZSH_CUSTOM/plugins/zsh-direnv
plugins+=(zsh-direnv)

# git clone https://github.com/MichaelAquilina/zsh-you-should-use $ZSH_CUSTOM/plugins/zsh-nvm
export YSU_MESSAGE_POSITION="after"
export YSU_IGNORED_ALIASES=("g")
plugins+=(you-should-use)
