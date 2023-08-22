# dotfiles

Don't use this.

Debian is stable.
Arch is bleeding edge and we'll support it later if flatpak/distrobox proves to not work with games and stuff.
Anything else is unnecessary complication.

# Prerequisites
 - Fresh install of Debian
 - Root access for the initial setup

# Installation
```sh
$ apt install git
$ git clone https://github.com/zaphodb2002/dotfiles
$ cd dotfiles
$ chmod +x base-setup.sh
$ ./base-setup.sh
```

# What are we doing here?
Automate installation of fresh machines for each of our use cases:
 - Developers
 - Adminstrators
 - Designers
 - Game Testers
 - Artists

# base utilities
## bash
This is your shell.
### fancy-bash-prompt.sh
## neovim
This is your text editor.
### Gruvbox
### Airline
## w3m
This is a console web browser.

If this is a server or you are a l337 h4X0r, you can stop now.


# Desktop prerequisites
## alacritty
This is your terminal emulator, to access the shell from the desktop.
### Gruvbox theme

# desktop-lite (Ideal for developers or anyone comfortable with a keyboard-first environment
## i3 
The venerable tiling window manager.
Likely we will switch to sway when it works for gaming.

### i3blocks
### i3 autotile

## rofi (Mod+d by default)
A modern app launcher

## ranger
File manager

## nitrogen (or feh?)
draw wallpapers

## picom
compositor for transparency and other prettiness

## pulsemixer
a TUI for volume control

# productivity
## taskWarrior

## Pomo

## 

# desktop-full (KDE Plasma for a full DE experience)
kde

