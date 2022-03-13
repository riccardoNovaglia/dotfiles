export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

ZSH_CUSTOM=${HOME}/repos/dotfiles/zsh_custom
# (To add plugins: git clone https://github.com/xxx $ZSH_CUSTOM/plugins/xxx)

# Built-in
plugins=(autojump git)

# git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins+=(zsh-syntax-highlighting)

# git clone https://github.com/ptavares/zsh-direnv $ZSH_CUSTOM/plugins/zsh-direnv
plugins+=(zsh-direnv)

# git clone https://github.com/lukechilds/zsh-nvm $ZSH_CUSTOM/plugins/zsh-nvm
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=false
export NVM_COMPLETION=true
plugins+=(zsh-nvm)

ZSH_DISABLE_COMPFIX=true # If using brew across multiple accounts
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
