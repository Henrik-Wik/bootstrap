#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install python3 python3-pip python3-venv
sudo apt install -y zsh curl git neovim gh wl-clipboard

mkdir -p ~/repos

curl -fsSL https://opencode.ai/install | bash

RUNZSH=yes CHSH=yes sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/Henrik-Wik/dotfiles ~/repos/dotfiles && ~/repos/dotfiles/install.sh
