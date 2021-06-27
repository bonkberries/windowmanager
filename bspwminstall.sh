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
sleep 2
echo ""
echo "installing bspwm & sxhkd"
sudo pacman -S bspwm sxhkd --noconfirm
echo "window manager installed"
sleep 2
echo "installing programs"
sudo pacman -S xorg-xinit xorg-server xorg-setxkbmap thunar xfce4-terminal xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin rofi gnome-screenshot lightdm lightdm-gtk-greeter picom lxappearance nitrogen --noconfirm
sleep 2
echo "programs installed"
echo ""
sleep 1
echo "adding bspwm to startx file"
echo >> $HOME/.xinitrc "bspwm &"
chmod +x $HOME/.xinitrc
echo "enabling lightdm"
sudo systemctl enable lightdm
sleep 1
echo "everything is done"
sleep 1 
echo "the terminal keybind is Super+Enter"
echo "have fun"
echo "login manager will open in 5 seconds"
sleep 5
clear
sudo systemctl restart lightdm
exit

