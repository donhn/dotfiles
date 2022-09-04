local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "lewis6991/impatient.nvim"
  use "folke/which-key.nvim"

  -- Color Scheme
  use "rebelot/kanagawa.nvim"
  use "nvim-lualine/lualine.nvim"
  use "goolord/alpha-nvim"

  -- Cmp Plugins
  use "hrsh7th/nvim-cmp"            -- The completion plugin
  use "hrsh7th/cmp-buffer"          -- buffer completions
  use "hrsh7th/cmp-path"            -- path completions
  use "saadparwaiz1/cmp_luasnip"    -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "jose-elias-alvarez/null-ls.nvim"
  use "RRethy/vim-illuminate"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- Nvim Tree
  use "kyazdani42/nvim-tree.lua"

  -- Text Editing Helpers
  use "terrortylor/nvim-comment"                        -- Comments
  use "JoosepAlviste/nvim-ts-context-commentstring"     -- Hover syntax aware comments.
  use "windwp/nvim-autopairs"                           -- Autopair
  use "lukas-reineke/indent-blankline.nvim"             -- Indentation guides.

  -- Telescope
  -- Don't forget to install ripgrep and fd!
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Gitsigns
  use "lewis6991/gitsigns.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)