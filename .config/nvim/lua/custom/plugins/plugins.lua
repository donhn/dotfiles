local plugins = {
  ["goolord/alpha-nvim"] = {
         disable = false,
  },

  -- LSP Stuff
  ["williamboman/nvim-lsp-installer"] = {},

  ["neovim/nvim-lspconfig"] = {
    -- after = 'nvim-lsp-installer',
    config = function()
      require "custom.plugins.lsp.lsp_installer"
      require "plugins.configs.lspconfig"
      require "custom.plugins.lsp.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    config = function ()
      require "custom.plugins.lsp.null_ls"
    end
  },
}
return plugins
