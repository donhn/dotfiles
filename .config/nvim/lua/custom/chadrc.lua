local M = {}
local overrides = require "custom.plugins.overrides"

M.ui = {
  theme = "ayu-dark",
}

M.mappings = require"custom.mappings"
M.plugins = {
  user = require "custom.plugins.plugins",
  override = {
   ["nvim-telescope/telescope.nvim"] = overrides.telescope, 
  },
}
-- M.plugins = {
--   user = {
--     ["goolord/alpha-nvim"] = pluginConfs.alpha,
--     -- ["williamboman/nvim-lsp-installer"] = {},
--   },
--   override = {
-- --    ["nvim-telescope/telescope.nvim"] = pluginConfs.telescope,
--   },
-- }

return M
