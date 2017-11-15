#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: apply.sh [theme] [terminal]"
    echo "currently only macOS and iTerm are supported"
    echo "to use it with iTerm, pass 'iterm' as the [terminal] param"
    echo "============================================================"
    echo "Available themes:"
    ls ~/.gvcci/themes
else
    platform=$OSTYPE
    theme_name="$1"
    terminal_name="$2"
    img_path=$(cd "$HOME/.gvcci/themes/$theme_name"; pwd)/$(ls "$HOME/.gvcci/themes/$theme_name"/ | grep wallpaper)

    current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    case $platform in
        darwin*)
            $current_dir/wallpaper/darwin.sh $img_path
            ;;
        *)
            echo "Could not find script to apply wallpaper to platform $platform"
            ;;
    esac

    $current_dir/terminal/"$terminal_name".sh $theme_name
fi
