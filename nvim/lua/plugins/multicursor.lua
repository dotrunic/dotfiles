return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",
    opts = {},
    keys = {
      -- Add cursors
      { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" } },
      { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "x" } },
      -- Mouse support
      { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" } },
      -- Start multicursor mode (optional)
      { "<Leader>mc", "<Cmd>MultipleCursorsStart<CR>" },
    },
  },
}
