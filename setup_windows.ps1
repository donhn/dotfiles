winget install --id Microsoft.Powershell --source winget
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install main/neovim
scoop install main/nodejs
scoop install main/python
scoop install main/gcc
scoop install main/git

scoop bucket add nerd-fonts
scoop install nerd-fonts/Meslo-NF

git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1
