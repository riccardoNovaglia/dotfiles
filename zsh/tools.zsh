############
# JS tooling
############
# fnm: fast Node manager.
export PATH="/Users/riccardo.novaglia/Library/Application Support/fnm:$PATH"
eval "`fnm env --use-on-cd --log-level=error`"

# Yarn global packages.
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

################
# Python tooling
################
export PIP_REQUIRE_VIRTUALENV=true

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/15/bin:$PATH"

# Poetry.
#export PATH="/Users/riccardo.novaglia/.local/bin:$PATH"
################

# JetBrains launch scripts.
export PATH="$HOME/.idea/cmd:$PATH"

# Fuzzy finder.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Zoxide - replace cd with autojump-like functionality.
eval "$(zoxide init --cmd cd zsh)"

# Atuin - sql shell history.
export ATUIN_CONFIG_DIR="$HOME/projects/me/dotfiles/atuin"
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init zsh --disable-up-arrow)"

# pnpm
export PNPM_HOME="/Users/riccardo.novaglia/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# uv, probably?
#. "$HOME/.cargo/env"
# uv tools
export PATH="/Users/riccardo.novaglia/.local/bin:$PATH"

# Git
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_UPDATE=true

################
# Disabled tools
################
# RabbitMQ. Pretty sure it's not useful? Re-enable if running RabbitMQ locally.
# export PATH=/usr/local/sbin:$PATH

# Starship prompt. p10k seems better/faster.
# export STARSHIP_CONFIG=~/projects/me/dotfiles/starship/starship.toml
# eval "$(starship init zsh)"

# 1pass OP completions
# eval "$(op completion zsh)"; compdef _op op
# 1pass AWS CLI setup
# source /Users/riccardo.novaglia/.config/op/plugins.sh

# REPLACED WITH FNM
# To re-enable, comment out fnm at the top, un-comment this, and remove the fnm terminal fragment from p10k.zsh:43
# git clone https://github.com/lukechilds/zsh-nvm $ZSH_CUSTOM/plugins/zsh-nvm
#export NVM_AUTO_USE=true
#export NVM_LAZY_LOAD_EXTRA_COMMANDS=('yarn')
#export NVM_LAZY_LOAD=true
#export NVM_COMPLETION=true
#plugins+=(zsh-nvm)
## This is required for nvm and node to work in bash, but we don't run it an use aliases instead.
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#plugins+=(zsh-nvm)
###########
