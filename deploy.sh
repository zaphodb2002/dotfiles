#!/usr/bin/env bash

sudo pacman -S --needed base-devel git
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

git submodule init
git submodule update

base=(
	bash
	bin
	scripts
	fontconfig
	starship
	neovim
	)


server=(

	)

workstation=(
	git
	gh
	i3
	rofi
	alacritty
	taskwarrior
	)

gaming=(
	sims-4
	)


stowit() {
	category=$1
	app=$2

	stow -vRt ${category} ${app}
}

#deploy() {
#	category=$1
#	folder=$2
#
#	for app in $1[@]; do
#		stowit $2 $app
#	done
#}

#deploy base $HOME

for app in ${base[@]}; do
	stowit "${HOME}" $app
done

#paru -S starship
#paru -S neovim

	if [ "${1}" = "workstation" ]; then

	for app in ${workstation[@]}; do
		stowit "${HOME}" $app
	done

#	paru -S git
#	paru -S alacritty
#	paru -S taskwarrior

	if [ "${2}" = "gaming" ]; then
		for app in ${gaming[@]}; do
			stowit "${HOME}/Games/" $app
		done
	fi
fi

source $HOME/.bashrc
