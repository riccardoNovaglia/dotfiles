#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Water Consumersite file deeplink
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🌊
# @raycast.argument1 { "type": "text", "placeholder": "File reference" }

URL=$1

UPDATED_URL=$(echo "$1" | sed 's/:/#L/')

open "https://github.com/octoenergy/water-consumer-site/blob/master/$UPDATED_URL"
