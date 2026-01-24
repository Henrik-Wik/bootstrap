#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y \
python3 python3-pip python3-venv \
zsh curl git neovim gh

mkdir -p ~/repos

curl -fsSL https://opencode.ai/install | bash

RUNZSH=no CHSH=no sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/Henrik-Wik/dotfiles ~/repos/dotfiles && ~/repos/dotfiles/install.sh

chsh -s $(which zsh)
