#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kraken core file GH deeplink
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "File reference" }

URL=$1

UPDATED_URL=$(echo "$1" | sed 's/:/#L/')

open "https://github.com/octoenergy/kraken-core/blob/master/$UPDATED_URL"
