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

echo "Deploying ~/.config/nvim/init.lua ..."
cp ./init.lua ~/.config/nvim/init.lua

echo "finished"
