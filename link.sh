#!/bin/sh

BASEDIR=$(dirname $(readlink -f "$0"))

ln -s -i  "$BASEDIR/.Xresources" "$HOME/.Xresources"
