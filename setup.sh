#!/bin/sh
~/../usr/bin/termux-setup-storage # setup external storage
bash ./packages.sh # install necessary program
bash ./git.sh # configure git
bash ./nvim.sh # configure neovim editor
bash ./zsh.sh # configure zsh shell
