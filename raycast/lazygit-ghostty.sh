#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Lazygit Ghostty
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 👻
# @raycast.argument1 { "type": "text", "placeholder": "~" }


FILE_PATH=~/projects/me/dotfiles/zsh/on_startup.zsh

restore_file() {
    sleep 2
    echo "$1" > "$FILE_PATH"
}

ORIGINAL_FILECONTENT=$(< $FILE_PATH)

echo "cd $1; lgke" > $FILE_PATH

cat $FILE_PATH

restore_file "$ORIGINAL_FILECONTENT" &

open -a "Ghostty"