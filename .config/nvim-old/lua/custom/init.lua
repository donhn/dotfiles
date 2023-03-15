vim.opt.mouse = ""
vim.opt.signcolumn = "yes:2"
vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.gd",
  callback = function ()
    vim.opt_local.expandtab=false
  end,
})

-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   callback = function()
--     vim.cmd[[:update]]
--   end,
-- })
