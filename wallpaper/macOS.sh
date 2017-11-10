#!/bin/bash

img_path="$1"
cmd="tell application \"System Events\" to set picture of every desktop to POSIX file \"$img_path\""
osascript -e "$cmd"

