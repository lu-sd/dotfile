#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open NewTab
# @raycast.mode silent
#
# Optional parameters:
# @raycast.packageName local
# @raycast.icon images/github-logo.png
# @raycast.iconDark images/github-logo-iconDark.png

open -na "Google Chrome" --args --new-window "https://google.com"
