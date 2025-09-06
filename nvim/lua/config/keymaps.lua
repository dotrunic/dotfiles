-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
    file_ignore_patterns = { "node_modules", ".git/", "dist/", "build/" },
  })
end, { desc = "Find Files (no node_modules)" })

-- Map easier keys for diagnostics
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })

-- Optional: unmap default [d and ]d if you want
vim.keymap.del("n", "[d")
vim.keymap.del("n", "]d")

-- Next/Previous buffer
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Close current buffer
vim.keymap.set("n", "<leader>bx", ":bdelete<CR>", { desc = "Close Buffer" })

-- lua/config/keymaps.lua
vim.keymap.set("n", "<leader>fw", function()
  require("telescope.builtin").live_grep()
end, { desc = "Find Text in Files" })

vim.keymap.set(
  "n",
  "<leader>os",
  ":!openscad -o %:r.stl %<CR>",
  { silent = true, desc = "Export Openscad File to STL" }
)
