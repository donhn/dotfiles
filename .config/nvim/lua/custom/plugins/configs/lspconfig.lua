local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- cland being handled by cland_extensions plugin
local servers = { "gdscript",  "tsserver", "eslint", "dockerls" }
local opts = {}
for _, lsp in ipairs(servers) do
  opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  if lsp == "gdscript" then
    opts.flags = { debounce_text_changes = 150 }
  end
  -- if lsp == "denols" then
  --   opts.root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc")
  -- end
  if lsp == "tsserver" then
    opts.root_dir = lspconfig.util.root_pattern "package.json"
  end
  lspconfig[lsp].setup(opts)
end
