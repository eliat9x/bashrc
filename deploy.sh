#!/bin/bash

echo "Deploying ~/.bashrc.user ..."
cp ./.bashrc.user ~/.bashrc.user

echo "Deploying ~/.tmux.conf ..."
cp ./.tmux.config ~/.tmux.config

echo "Deploying ~/.config/nvim/init.lua ..."
if [ ! -d "$HOME/.config/nvim" ]; then
	echo "$HOME/config/nvim does not exist. Creating now..."
	mkdir -p "$HOME/.config/nvim"
fi
cp ./init.lua ~/.config/nvim/init.lua

echo "Deploying ~/.gitconfig ..."
cp ./.gitconfig ~/.gitconfig

echo "finished"
