#!/bin/bash

platform=$OSTYPE
theme_name=$1
terminal_name=$2
img_path=$(cd ~/.gvcci/themes/$theme_name; pwd)/$(ls ~/.gvcci/themes/"$theme_name"/ | grep wallpaper)

case $platform in
    darwin*)
        ./wallpaper/macOS.sh $img_path
        ;;
    *)
        echo "Could not find script to apply wallpaper to platform $platform"
        ;;
esac

./terminal/"$terminal_name".sh $theme_name
