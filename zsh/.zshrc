# Profiling: uncomment next line to turn on to debug slow commands, plus matching at end of file.
# zmodload zsh/zprof

export ZSH="$HOME/.oh-my-zsh"

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set Powerlevel10k as theme.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Doesn't seem to make much difference, disabled for now. Should speed up zsh startup?
# source ~/projects/me/dotfiles/zsh/compinit.zsh

# Load zsh plugins.
source ~/projects/me/dotfiles/zsh/plugins.zsh

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_UPDATE=true

source $ZSH/oh-my-zsh.sh

# Import and enable dev tools.
source ~/projects/me/dotfiles/zsh/tools.zsh

# Enable pyinvoke completions.
source ~/projects/me/dotfiles/zsh/invoke.zsh

# Enable aliases.
source ~/projects/me/dotfiles/zsh/aliases.zsh
source ~/projects/me/dotfiles/zsh/git_aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Setup Kraken env variables.
source ~/projects/me/dotfiles/zsh/kraken.zsh

# Profiling: uncomment (and matching at top of file) to turn on to debug slow commands.
# zprof
