echo "Installing Requeriments"

sleep 2

sudo pacman -S xorg feh picom npm firefox gcc qtile pcmanfm rofi neovim nano lightdm lightdm-gtk-greeter alacritty base-devel make cmake fakeroot neofetch git python3 python2 python-pip alsa-utils binutils cbatticon volumeicon udiskie nm-applet lxappearance --noconfirm

echo "Downloading Config"

sleep 2

cd /opt/

git clone https://aur.archlinux.org/yay.git

chmod 777 yay/

cd yay/

makepkg -si

cd

yay -S nerd-fonts-ubuntu-mono --noconfirm

git clone https://github.com/antoniosarosi/dotfiles

git clone https://github.com/antoniosarosi/pycritty

git clone https://github.com/antoniosarosi/Wallpapers

pip install pycritty

cp -r pycritty/config/themes/ .config/alacritty/

pycritty -s 12 -f UbuntuMono -t material-ocean -o 0.8

touch .xprofile

echo "picom &" >> .xprofile

echo "setxkbmap es" >> .xprofile

echo "feh --bg-fill Wallpapers/01.png" >> .xprofile

feh --bg-fill Wallpapers/01.png

echo "udiskie -t &" >> .config/qtile/autostart.sh
echo "nm-applet &" >> .config/qtile/autostart.sh

python3 qtile-theme.py
