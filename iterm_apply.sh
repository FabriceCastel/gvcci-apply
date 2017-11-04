#!/bin/bash

cp ~/.gvcci/themes/$1/iterm.plist ~/Library/Application\ Support/iTerm2/DynamicProfiles/gvcci.plist

# set macOS wallpaper
img_path=$(cd ~/.gvcci/themes/$1; pwd)/$(ls ~/.gvcci/themes/"$1"/ | grep wallpaper)
cmd="tell application \"Finder\" to set desktop picture to POSIX file \"$img_path\""
echo "$cmd"
osascript -e "$cmd"

# This doesn't matter if the gvcci profile is set as default
sleep 3 # wait for iTerm to pick up the new profile before trying to load it
echo -e "\033]50;SetProfile=gvcci\a"

echo "If you want your iTerm color scheme to update automatically every"
echo "time you run this script, go to:"
echo "Preferences > Profiles > gvcci"
echo "Then under 'Other Actions...' select 'Set as Default'"
echo "This will take effect for all new terminal sessions"
