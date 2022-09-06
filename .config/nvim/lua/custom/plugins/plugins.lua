local plugins = {
  ["goolord/alpha-nvim"] = {
         disable = false,
  },

  -- LSP Stuff
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lsp.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function ()
      require "custom.plugins.lsp.null_ls"
    end
  },
  ["kosayoda/nvim-lightbulb"] = {
    requires = "antoinemadec/FixCursorHold.nvim",
    config = function ()
      require "custom.plugins.configs.lightbulb"
    end
  },

  -- Lazygit
  ["nvim-telescope/telescope.nvim"] = {
    cmd = nil,
  },
  ["kdheepak/lazygit.nvim"] = {},
}
return plugins
