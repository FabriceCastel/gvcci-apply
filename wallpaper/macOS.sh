#!/bin/bash

#img_path=$(cd ~/.gvcci/themes/$1; pwd)/$(ls ~/.gvcci/themes/"$1"/ | grep wallpaper)
img_path="$1"
cmd="tell application \"Finder\" to set desktop picture to POSIX file \"$img_path\""
echo "$cmd"
osascript -e "$cmd"

