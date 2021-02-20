#!/bin/sh

echo "installing sxhkd config"

mkdir $HOME/.config/sxhkd
install sxhkdrc $HOME/.config/sxhkd/sxhkdrc

echo "installing bspwm config"

mkdir $HOME/.config/bspwm
install bspwmrc $HOME/.config/bspwm/bspwmrc
