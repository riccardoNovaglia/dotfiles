# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set Powerlevel10k as theme.
ZSH_THEME="powerlevel10k/powerlevel10k"

function source_p10k {
  # To customize prompt, run `p10k configure` or edit ~/projects/me/dotfiles/p10k/p10k.zsh
  [[ ! -f ~/projects/me/dotfiles/p10k/p10k.zsh ]] || source ~/projects/me/dotfiles/p10k/p10k.zsh
}
