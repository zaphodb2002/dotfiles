
# Install Podman locally
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/extras/install-podman | sh -s -- --prefix ~/.local
ln -s $HOME/.local/podman/bin/podman $HOME/.local/bin

# Install Distrobox
rm -rf $USERHOME/distrobox
git clone https://github.com/89luca89/distrobox /home/zaphod/distrobox
./$HOME/distrobox/install
rm -rf $USERHOME/distrobox

# install kitty
#curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
#ln -s $HOME/.local/kitty.app/bin/kitty $HOME/.local/bin/

# Create an Arch distrobox 
#distrobox rm archlinux
#distrobox create -i archlinux

# From here on out we'll be installing things from the arch distros
#distrobox enter archlinux

