local M = {}

M.general_custom = {
  n = {
    ["sv"] = { ":vsplit<CR>", "Split viewport vertical" },
    ["ss"] = { ":split<CR>", "Split viewport horizontal" },
    ["sh"] = { "<C-w>h", "viewport left" },
    ["sl"] = { "<C-w>l", "viewport right" },
    ["sk"] = { "<C-w>k", "viewport up" },
    ["sj"] = { "<C-w>j", "viewport down" },
    ["<S-l>"] = { ":bnext<CR>", "Next buffer" },
    ["<S-h>"] = { ":bprevious<CR>", "Previous buffer" },
    ["x"] = { '"_x', "Blackhole delete" },

    ["<leader>gg"] = { ":LazyGit", "LazyGit" },
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
--    ["<leader>ca"] = { "<cmd>CodeActionMenu<CR>", "lsp code_action" },
--    ["<leader>fe"] = { "<cmd>Telescope file_browser initial_mode=normal<CR>", "telescope file browser" },
  },
}

M.nvimtree = {
  n = {
--    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "focus nvimtree" },
  },
}

return M
