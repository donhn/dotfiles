local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "pyright",
}

local opts = {}
for _, lsp in ipairs(servers) do
  opts = {
      on_attach = on_attach,
    capabilities = capabilities,
  }
  --
  -- if lsp == "sumneko_lua" then
  --   local sumneko_opts = require "custom.plugins.lsp.settings.sumneko_lua"
  --   opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  -- end
  --
  lspconfig[lsp].setup(opts)
end
