local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local b= null_ls.builtins

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup {
  debug = true,
  sources = {
    -- formatting.prettier.with {
    --   extra_filetypes = { "toml" },
    --   extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    -- },
    -- formatting.black.with { extra_args = { "--fast" } },
    -- formatting.stylua,
    -- diagnostics.flake8,
    -- -- C++
    -- b.formatting.clangd,
    -- b.code_actions.clangd,
  },
}
