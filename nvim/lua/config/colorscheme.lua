-- lua/config/colorscheme.lua
vim.opt.termguicolors = true
require("ayu").setup({
  mirage = false, -- or true for mirage variant
  background = "dark",
  overrides = {
    Normal = { bg = "NONE" },
    NormalNC = { bg = "NONE" },
    SignColumn = { bg = "NONE" },
    VertSplit = { bg = "NONE" },
    StatusLine = { bg = "NONE" },
    TabLine = { bg = "NONE" },
    Pmenu = { bg = "NONE" },
  },
})
vim.cmd.colorscheme("ayu-dark")
