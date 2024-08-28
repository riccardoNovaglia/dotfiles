#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Set dark mode
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "dropdown", "placeholder": "Dark?", "data": [{"title": "True", "value": "1"}, {"title": "False", "value": "0"}] }

if [ $1 == 1 ]; then
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
    echo 'Set to Dark Mode'
else
    osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
    echo 'Set to Light Mode'
fi

