#!/bin/bash

BASEDIR=$(dirname $(readlink -f "$0"))

ln -s -i  "$BASEDIR/.Xresources" "$HOME/.Xresources"
if [[ ! -e "$HOME/.emacs.d" ]]; then
    mkdir "$HOME/.emacs.d"
fi

ln -s -i  "$BASEDIR/emacs/init.el" "$HOME/.emacs.d/init.el"
ln -s -i  "$BASEDIR/awesome" "$HOME/.config/awesome"

ln -s -i "$BASEDIR/i3/i3" "$HOME/.config/i3"
ln -s -i "$BASEDIR/i3/i3status" "$HOME/.config/i3status"
