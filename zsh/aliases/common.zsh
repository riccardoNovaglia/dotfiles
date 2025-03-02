wait_and_open() {
    wait-port --output silent $1;
    osascript ~/projects/me/dotfiles/open_or_refresh.applescript "http://localhost:$1";
}

alias run="yarn run"
alias r="run"
alias t="yarn test"
alias i="yarn install"
alias ,nu="nvm use"

alias charm="pycharm"

alias zshrc="vi ~/.zshrc && source ~/.zshrc"
# alias z="zshrc"
# alias zup="source ~/.zshrc"

alias ,historyless="history | less"
alias ,envless="env | less"

alias play_alert_sound='afplay /System/Library/Sounds/Hero.aiff'
alias ,a='play_alert_sound'

alias ,p10k='source_p10k'

yaddcommitamend() {
    yarn add $1 $2; git add . && git commit --amend --no-edit; git push -f
}

alias amexsort="python main.py"
alias karabiner="npm run deploy"


alias ,ghostty_docs="ghostty +show-config --default --docs > /tmp/ghostty.docs | fleet /tmp/ghostty.docs"
