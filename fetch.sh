#!/bin/bash

echo "Copying ~/.bashrc.user to here...."
cp ~/.bashrc.user .

echo "Copying ~/.tmux.conf to here...."
cp ~/.tmux.config .

echo "Copying ~/.config/nvim/init.lua to here...."
cp ~/.config/nvim/init.lua .

echo "finished"
