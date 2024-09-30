#!/bin/bash

# NOTE: This script must be contained in its git repo
DOTFILES_DIR=$(dirname "$0")

mv -T $DOTFILES_DIR ~/.dotfiles
mv ~/.tmux.conf ~/.vimrc ~/.dotfiles/old_scripts   # Move old scripts to backup instead of deleting

# Setup simlinks
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Bashrc setup
echo 'source ~/.dotfiles/bashrc' >> ~/.bashrc
