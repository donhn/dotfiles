local M = {}

M.general_custom = {
  n = {
    ["sv"] = { ":vsplit<CR><C-w>w", "Split viewport vertical" },
    ["ss"] = { ":split<CR><C-w>w", "Split viewport horizontal" },
    ["sh"] = { "<C-w>h", "viewport left" },
    ["sl"] = { "<C-w>l", "viewport right" },
    ["sk"] = { "<C-w>k", "viewport up" },
    ["sj"] = { "<C-w>j", "viewport down" },
    ["<S-l>"] = { ":bnext<CR>", "Next buffer" },
    ["<S-h>"] = { ":bprevious<CR>", "Previous buffer" },
    ["x"] = { '"_x', "Blackhole delete" },
  },
  i = {
    ["<C-r>"] = { "<ESC>ddi", "delete line" },
  },
  v = {
    ["<"] = { "<gv", "Indent left" },
    [">"] = { ">gv", "Indent right" },
    ["x"] = { '"_x', "Blackhole delete" },
  },
}

M.telescope = {
  n = {
    ["<leader>ca"] = { "<cmd>CodeActionMenu<CR>", "lsp code_action" },
  },
}

return M
