!#/bin/bash
# Mason Language Server Requirements
sudo apt install npm
sudo apt install python3.10-venv
sudo apt install unzip
# Telescope Grep Requirements
sudo apt install ripgrep

# Lazygit
if  [$(uname -s) == "Darwin"]; then
    brew install jesseduffield/lazygit/lazygit
    brew install lazygit
elif [$(uname -s) == "Linux"]; then
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin
fi

# NVChad
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb &&
sudo apt install ./nvim-linux64.deb &&
rm ./nvim-linux64.deb &&
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1 &&
cp -r .config/nvim $HOME/.config &&
nvim
