local plugins = {

  ["neovim/nvim-lspconfig"] = {
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["p00f/clangd_extensions.nvim"] = {
    after = "nvim-lspconfig",
    module = "nvim-lspconfig",
    config = function ()
      require "custom.plugins.configs.clangd_extensions"
    end,
  },
  ["kosayoda/nvim-lightbulb"] = {
    requires = {"antoinemadec/FixCursorHold.nvim"},
    config = function ()
      require "custom.plugins.configs.lightbulb"
    end,
  },
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu",
  },
  ["kdheepak/lazygit.nvim"] = {},

}

return plugins
