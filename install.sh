echo "Installing Requeriments"

sleep 2

sudo pacman -S papirus-icon-theme xorg ruby rubygems npm nodejs feh go picom npm firefox gcc qtile pcmanfm rofi neovim nano lightdm lightdm-webkit2-greeter alacritty base-devel make cmake fakeroot neofetch git python3 python2 python-pip alsa-utils binutils cbatticon volumeicon udiskie nm-applet lxappearance --noconfirm

echo "Downloading Yay"

sleep 2

cd /opt/

git clone https://aur.archlinux.org/yay.git

chmod 777 yay/

cd yay/

makepkg -si

cd

yay -S nerd-fonts-ubuntu-mono --noconfirm

echo "Downloading Qtile Themes"

sleep 2

git clone https://github.com/antoniosarosi/dotfiles

git clone https://github.com/antoniosarosi/pycritty

git clone https://github.com/antoniosarosi/Wallpapers

pip install pycritty

cp -r pycritty/config/themes/ .config/alacritty/

pycritty -s 16 -f UbuntuMono -t material-ocean -o 0.8

touch .xprofile

echo "picom &" >> .xprofile

echo "setxkbmap es" >> .xprofile

echo "feh --bg-fill Wallpapers/01.png" >> .xprofile

cd

echo "udiskie -t &" >> ~/.config/qtile/autostart.sh
echo "nm-applet &" >> ~/.config/qtile/autostart.sh

cd arch/

python3 qtile-theme.py

chsh -s /bin/bash

pip install neovim
gem install neovim
sudo npm i -g neovim

cd

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp -r dotfiles/.config/nvim/ ~/.config/

yay -S nerd-fonts-ubuntu-mono
git clone https://github.com/davatorium/rofi-themes.git
sudo cp rofi-themes/User\ Themes/onedark.rasi /usr/share/rofi/themes

cd && cp -r dotfiles/.config/rofi ~/.config

yay -S lightdm-webkit-theme-aether --noconfirm


echo "neofetch" >> .bashrc



echo "GG bro"
