#!/bin/sh
yes | pkg update
curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
yes | pkg install neovim python tmux gdb git build-essential clang ranger zsh iproute2 nodejs binutils rust
cargo install tree-sitter-cli
pkg install openssh -y
passwd
