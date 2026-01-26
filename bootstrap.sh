#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y \
python3 python3-pip python3-venv \
zsh curl git gh unzip ripgrep fzf tmux

# Node.js (better than apt)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# tree-sitter-cli for python parsing
npm install -g tree-sitter-cli

# Neovim tarball install
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# create local repos folder
mkdir -p ~/repos

# OMZ
RUNZSH=no CHSH=no sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# dotfiles
git clone https://github.com/Henrik-Wik/dotfiles ~/repos/dotfiles && ~/repos/dotfiles/install.sh

# change default shell to zsh
chsh -s $(which zsh)

