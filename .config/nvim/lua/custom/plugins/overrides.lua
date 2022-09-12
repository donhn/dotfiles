local M = {}

M.telescope = function()
  local telescope = require 'telescope'
  local actions = require('telescope.actions')

  return {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        }
      }
    },
    extensions = {
      file_browser = {
        hijack_netrw = true,
        mappings = {

        },
      },
    },
    extensions_list = {"lazygit", "themes", "terms", "file_browser"},
  }
end

return M
