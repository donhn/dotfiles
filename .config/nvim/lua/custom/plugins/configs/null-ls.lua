local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
  -- Webdev
  b.formatting.prettier,
  b.diagnostics.eslint,
  b.code_actions.eslint,

   -- Lua
   b.formatting.stylua,

   -- Godot
   b.formatting.gdformat,
   b.diagnostics.gdlint,

   -- English
   -- b.diagnostics.misspell,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
