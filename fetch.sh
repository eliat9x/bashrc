#!/bin/bash

echo "copy ~/.bashrc.user to here...."
cp ~/.bashrc.user .
echo "copy ~/.tmux.conf to here...."
cp ~/.tmux.config .
echo "copy ~/.config/nvim/init.lua to here...."
cp ~/.config/nvim/init.lua .

echo "finished"
