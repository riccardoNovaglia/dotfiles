alias gupstash="git stash; gup; git stash pop"

alias t="npm t"
alias s="npm start"
alias ia="npm run install:all"
alias i="npm install"
alias run="npm run"
alias r="run"

alias zshrc="vi ~/.zshrc && source ~/.zshrc"
alias z="zshrc"
alias idea='IDEA=$(ls -1d /Applications/IntelliJ\ * | tail -n1); open -a "$IDEA" "$1"'
# multi-user brew fix
alias fix_brew='\
sudo chown -R $(whoami) /usr/local/share /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew/locks /usr/local/share/zsh/site-functions/_brew_services /usr/local/Homebrew/Library/Taps/homebrew/homebrew-services/completions/zsh/_brew_services && \
sudo chmod u+w          /usr/local/share /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew/locks /usr/local/share/zsh/site-functions/_brew_services /usr/local/Homebrew/Library/Taps/homebrew/homebrew-services/completions/zsh/_brew_services'
