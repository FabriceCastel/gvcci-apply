#!/bin/bash

platform=$OSTYPE
theme_name=$1
terminal_name=$2
img_path=$(cd ~/.gvcci/themes/$theme_name; pwd)/$(ls ~/.gvcci/themes/"$theme_name"/ | grep wallpaper)

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case $platform in
    darwin*)
        $current_dir/wallpaper/macOS.sh $img_path
        ;;
    *)
        echo "Could not find script to apply wallpaper to platform $platform"
        ;;
esac

$current_dir/terminal/"$terminal_name".sh $theme_name
