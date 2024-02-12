winget install --id Microsoft.Powershell --source winget
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop bucket add nerd-fonts 
scoop bucket add extras
scoop install 7zip clangd cmake delta fd ffmpeg firefox gcc lazygit Meslo-NF`
mingw neovim nextcloud ninja nodejs obsidian perl python ripgrep sharpkeys `
spotify vscode wezterm winscp
git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1
