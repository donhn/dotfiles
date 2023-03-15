local present, null_ls = pcall(require, "null-ls")

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
      command = 'blackd-client',
      to_stdin = true,
    },
  },

  -- bash
  b.formatting.beautysh,

  -- c/cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
