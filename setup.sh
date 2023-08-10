#!/bin/bash

OPERATING_SYSTEM=$(uname -s)

# AppImage requirement
sudo apt install fuse
# Mason Language Server Requirements
sudo apt install npm
sudo apt install python3.10-venv
sudo apt install python3.8-venv
sudo apt install unzip
# Telescope Grep Requirements
sudo apt install ripgrep

# Lazygit
if [ "$OPERATING_SYSTEM" == "Darwin" ]; then
    brew install jesseduffield/lazygit/lazygit
    brew install lazygit
    brew install neovim
elif [ "$OPERATING_SYSTEM" == "Linux" ]; then
    # Lazygit
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin
    rm lazygit*
    # Neovim
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
    chmod u+x nvim.appimage &&
    sudo mv nvim.appimage /usr/local/bin &&
    sudo ln -s /usr/local/bin/nvim.appimage /usr/local/bin/nvim
    # Zellij
    curl -Lo zellij.tar.gz https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz 
    gunzip zellij.tar.gz 
    tar xf zellij.tar
    cp zellij /usr/local/bin 
    rm -r zellij*
fi

# NVChad
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1 &&
cp -r .config/nvim $HOME/.config &&
nvim
