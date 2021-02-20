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
echo "installing bspwm, sxhkd and polybar"
sudo pacman -S bspwm sxhkd --noconfirm
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
echo "window manager installed"
sleep 2
echo "installing binded programs"
sudo pacman -S xorg-xinit xorg-server xorg-xkbmap firefox nautilus xfce4-terminal rofi xfce4-screenshot picom lxappearance nitrogen --noconfirm
sleep 2
echo "programs installed"
echo ""
sleep 1
echo "installing adi1090x's polybar themes"
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh
sleep 1
echo "polybar themes installed"
echo "edit the polybar config to set a theme as the default"
