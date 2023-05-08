local present, null_ls = pcall(require, "null-ls")
local utils = require "core.utils"

if not present then
  return
end

local b = null_ls.builtins
local h = require "null-ls.helpers"

local sources = {

  -- Lua
  b.formatting.stylua,

  -- python
  b.formatting.black.with {
    generator = h.formatter_factory {
      command = "blackd-client",
      to_stdin = true,
    },
  },

  -- b.formatting.ruff,
  b.diagnostics.ruff,

  -- bash
  b.formatting.beautysh,

  -- c/cpp
  b.formatting.clang_format,

  -- html/django
  b.formatting.djlint.with {
    extra_args = {"--indent=2"}
  },
  b.diagnostics.djlint,
}

local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
