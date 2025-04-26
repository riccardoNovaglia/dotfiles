wait_and_open() {
    wait-port --output silent $1;
    osascript ~/projects/me/dotfiles/open_or_refresh.applescript "http://localhost:$1";
}

alias cdf="atuin search "^cd" --interactive"

alias ,historyless="history | less"
alias ,envless="env | less"

alias play_alert_sound='afplay /System/Library/Sounds/Hero.aiff'
alias ,a='play_alert_sound'

alias ,ghostty_docs="ghostty +show-config --default --docs > /tmp/ghostty.docs | fleet /tmp/ghostty.docs"
