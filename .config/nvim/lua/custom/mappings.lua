-- lua/custom/mappings
local M = {}

M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k"] = "",
  },
}

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
  },
}

M.telescope = {
  n = {
    ["<leader>gg"] = { ":LazyGit<CR>", "Lazygit" },
  },
}

return M
