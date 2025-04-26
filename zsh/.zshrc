# Profiling: uncomment next line to turn on to debug slow commands, plus matching at end of file.
# zmodload zsh/zprof

# To profile loading of plugins, replace plugin loading with this snippet in the file below.
## Load all of the plugins that were defined in ~/.zshrc
#for plugin ($plugins); do
##  timer=$(python3 -c 'import time; print(int(time.time() * 1000))')
#  _omz_source "plugins/$plugin/$plugin.plugin.zsh"
##  now=$(python3 -c 'import time; print(int(time.time() * 1000))')
##  elapsed=$(($now-$timer))
##  echo $elapsed":" $plugin
#done
export ZSH="$HOME/.oh-my-zsh"

source ~/projects/me/dotfiles/zsh/p10k.zsh

# Doesn't seem to make much difference, disabled for now. Should speed up zsh startup?
# source ~/projects/me/dotfiles/zsh/compinit.zsh

# Load zsh plugins.
source ~/projects/me/dotfiles/zsh/plugins.zsh

# Initialise zsh completions.
eval "$(brew shellenv)"
fpath=($HOMEBREW_PREFIX/share/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh

# Import and enable dev tools.
source ~/projects/me/dotfiles/zsh/tools.zsh

# Enable pyinvoke completions.
source ~/projects/me/dotfiles/zsh/invoke.zsh

# Enable aliases.
source ~/projects/me/dotfiles/zsh/aliases/aliases.zsh

# Imported from p10k.zsh.
source_p10k

# Setup Kraken env variables.
source ~/projects/me/dotfiles/zsh/kraken.zsh

# Profiling: uncomment (and matching at top of file) to turn on to debug slow commands.
# zprof

source ~/projects/me/dotfiles/zsh/on_startup.zsh
