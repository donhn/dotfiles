sudo apt install npm
sudo apt install python3.10-venv
sudo apt install ripgrep
sudo apt install unzip

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb &&
sudo apt install ./nvim-linux64.deb &&
rm ./nvim-linux64.deb &&
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1 &&
cp -r .config/nvim $HOME/.config &&
nvim  
