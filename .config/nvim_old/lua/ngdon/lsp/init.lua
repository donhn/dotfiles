local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require 'ngdon.lsp.lsp-installer'
require('ngdon.lsp.handlers').setup()
require 'ngdon.lsp.null-ls'
