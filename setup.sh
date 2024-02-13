#!/bin/bash

OPERATING_SYSTEM=$(uname -s)

sudo apt update -y
sudo apt upgrade -y

# AppImage requirement
sudo apt install fuse -y
# Mason Language Server Requirements
sudo apt install npm -y
sudo apt install python3-venv -y
sudo apt install unzip -y
# Telescope Grep Requirements
sudo apt install ripgrep -y

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
    sudo cp zellij /usr/local/bin
    rm -r zellij*
    # Exa 
    EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
    sudo unzip -d /usr/local/ exa.zip
    rm exa.zip
    # Meld
    sudo ln -s /mnt/c/Program\ Files/Meld/Meld.exe /usr/local/bin/meld
fi

# NVChad
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1 &&
cp -r .config/nvim $HOME/.config &&
nvim
