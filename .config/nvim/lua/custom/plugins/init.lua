return {

  -- Code
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["p00f/clangd_extensions.nvim"] = {
    after = "nvim-lspconfig",
    module = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.clangd_extensions"
    end,
  },
  ["kosayoda/nvim-lightbulb"] = {
    requires = { "antoinemadec/FixCursorHold.nvim" },
    config = function()
      require "custom.plugins.configs.lightbulb"
    end,
  },
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu",
  },
  ["kdheepak/lazygit.nvim"] = {
    after = "telescope.nvim",
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "black",
        "cmake-language-server",
        "cmakelang",
        "eslint-lsp",
        "eslint_d",
        "flake8",
        "lua-language-server",
        "prettier",
        "pyright",
        "stylua",
        "typescript-language-server",
      },
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "cpp",
        "dockerfile",
        "gdscript",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "typescript",
        "yaml",
      },
    },
  },

  -- Telescope
  ["nvim-telescope/telescope.nvim"] = {
    override_options = function()
      local telescope = require "telescope"
      local actions = require "telescope.actions"

      return {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
          },
        },
        -- extensions = {
        --   file_browser = {
        --     hijack_netrw = true,
        --     mappings = {},
        --   },
        -- },
        extensions_list = { "themes", "terms", "file_browser" },
      }
    end,
  },

  ["nvim-telescope/telescope-file-browser.nvim"] = {
    cmd = "Telescope",
  },
}
