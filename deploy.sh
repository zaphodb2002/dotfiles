#!/usr/bin/env bash

## Install and sync Nextcloud first!

sudo pacman -S --needed base-devel rustup
rustup default stable

ln -s $HOME/Nextcloud/Home/Documents $HOME/
ln -s $HOME/Nextcloud/Home/Pictures $HOME/

$(stow required -Rv)

if [ "$(which paru)" = "/usr/bin/paru" ]; 
then
	echo "Paru already installed" 
else
	$(git clone https://aur.archlinux.org/paru.git)
	$(cd paru)
	$(makepkg -si)
	$(cd ..)
	$(rm -rf paru)
fi

paru -S \
stow \
neovim \
starship \
eza \
zoxide \
rxfetch \
lolcat \
sparklines

if [[ "$1" = "desktop" ]]; then
	$(stow -Rv desktop)
fi

if [[ "$1" = "gaming" ]]; then
	$(stow -Rv desktop)
	$(stow -Rv gaming)
	$(ln -s $HOME/Nextcloud/Games/WoW/Interface "$HOME/Games/battle-net/drive_c/Program Files (x86)/World of Warcraft/_retail_/")
	$(ln -s $HOME/Nextcloud/Games/WoW/Screenshots "$HOME/Games/battle-net/drive_c/Program Files (x86)/World of Warcraft/_retail_/")
	$(ln -s $HOME/Nextcloud/Games/WoW/WTF "$HOME/Games/battle-net/drive_c/Program Files (x86)/World of Warcraft/_retail_/")
fi
