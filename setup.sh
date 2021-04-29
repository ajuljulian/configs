#!/usr/bin/env bash

if [ ! -f "$HOME/.config/nvim2" ]; then
    read -p "nvim2 does not exist. create? (y/n)" user_input
    if [ $user_input = "y" ]; then
        echo "creating..."
        ln -s "./nvim" "$HOME/.config/nvim2"
    else
        echo "aborting."
    fi
fi

exit 0
