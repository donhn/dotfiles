local opt = vim.opt

-- Set functionality options for vim
opt.fileencoding = "utf-8"
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.clipboard = "unnamedplus" 		-- Allows Neovim to output to system clipboard.
opt.undofile = true
opt.timeoutlen = 300
opt.updatetime = 300

-- Set visual options for vim
opt.title = false			            -- Using Lualine means we don't need this?
opt.showmode = false			        -- Using Lualine instead.
opt.termguicolors = true
opt.guifont = "MesloLGS NF:h17"		-- Font recommended by IlanCosman/tide.
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.signcolumn = "yes"
opt.scrolloff = 10
opt.sidescrolloff = 8
opt.cmdheight = 2
opt.laststatus = 3
opt.showcmd = false
opt.ruler = true
opt.cursorline = true
opt.hlsearch = true

-- Set text editing options for vim
opt.smartcase = true
opt.smartindent = true
opt.ignorecase = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.wrap = false 
opt.inccommand = "nosplit"
