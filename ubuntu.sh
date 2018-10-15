#!/bin/bash

install_libraries() {
  sudo apt-get install -y apt-transport-https \
    curl \
    git \
    unity-tweak-tool \
    gnome-tweak-tool \
    silversearcher-ag \
    tmux \
    dconf-cli \
    vim-gnome \
    htop \
    python3-pip \
    xdotool \
    xclip \
    exuberant-ctags \
}

# Install fuzzy finder https://github.com/junegunn/fzf
install_fzf() {
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

  ~/.fzf/install
}

sudo apt-get update
install_libraries
install_fzf
