local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Webdev
  b.formatting.prettier,
  b.diagnostics.eslint_d,
  b.code_actions.eslint_d,

  -- Lua
  b.formatting.stylua,

  b.formatting.black,
  b.diagnostics.flake8,

  -- CMake
  b.formatting.cmake_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
