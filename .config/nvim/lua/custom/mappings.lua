---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["sv"] = { ":vsplit<CR>", "split viewport vertical" },
    ["ss"] = { ":split<CR>", "split viewport horizontal" },
    ["sq"] = { ":close<CR>", "close viewport"},
    ["sh"] = { "<C-w>h", "viewport left" },
    ["sl"] = { "<C-w>l", "viewport right" },
    ["sk"] = { "<C-w>k", "viewport up" },
    ["sj"] = { "<C-w>j", "viewport down" },

    ["<C-h>"] = { ":vertical resize -5<CR>" },
    ["<C-l>"] = { ":vertical resize +5<CR>" },
    ["<C-j>"] = { ":horizontal resize -5<CR>" },
    ["<C-k>"] = { ":horizontal resize +5<CR>" },

    ["x"] = { '"_x', "blackhole delete" },

    ["gf"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    ["<leader>gg"] = { ":LazyGit<CR>", "LazyGit" },
  },
  i = {
    -- ["<C-r>"] = { "<ESC>ddi", "delete line" },
    ["<C-v>"] = { "<C-R>+" },
  },
  v = {
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
    ["<"] = { "<gv", "indent left" },
    [">"] = { ">gv", "indent right" },
    ["x"] = { '"_x', "blackhole delete" },
  },
}

M.leap = {
  n = {
    ["<leader>s"] = { "<Plug>(leap-forward-to)", "Leap forward" },
    ["<leader>S"] = { "<Plug>(leap-backward-to)", "Leap backwards" },
  },
}

return M
