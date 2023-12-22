#!/usr/bin/env bash

git submodule init
git submodule update

base=(
	bash
	bin
	scripts
	fontconfig
	starship
	nvim
	)

server=(

	)

workstation=(
	git
	i3
	rofi
	alacritty
	taskwarrior
	)

gaming=(
	world-of-warcraft
	)

stowit() {
	category=$1
	app=$2

	stow -vRt ${category} ${app}
}

deploy() {
	category=$1
	folder=$2

	for app in $1[@]; do
		stowit $2 $app
	done
}

deploy base $HOME

for app in ${base[@]}; do
	stowit "${HOME}" $app
done

if [ "${1}" = "workstation" ]; then

for app in ${workstation[@]}; do
	stowit "${HOME}" $app
done
	if [ "${2}" = "gaming" ]; then
		for app in ${gaming[@]}; do
			stowit "${HOME}/Games/" $app
		done
	fi
fi

source $HOME/.bashrc
