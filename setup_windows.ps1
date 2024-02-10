winget install --id Microsoft.Powershell --source winget
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop bucket add nerd-fonts extras
scoop install 7zip clangd cmake delta fd ffmpeg gcc lazygit mingw neovim \
ninja nodejs perl python ripgrep wezterm Meslo-NF

git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1
