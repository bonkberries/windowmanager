#!/bin/sh

echo "installing sxhkd config"
sleep 1
mkdir $HOME/.config/
mkdir $HOME/.config/sxhkd
install sxhkdrc $HOME/.config/sxhkd/sxhkdrc
echo ""
sleep 2
echo ""
echo "installing bspwm config"
sleep 1
mkdir $HOME/.config/bspwm
install bspwmrc $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/bspwm/bspwmrc
echo ""
sleep 2
echo "configs are done"
