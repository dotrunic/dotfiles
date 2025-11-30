return {
  {
    "Shatur/neovim-ayu",
    lazy = false, -- load during startup
    priority = 1000, -- make sure it loads before other UI stuff
    config = function()
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
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    confing = function()
      require("catppuccin").setup({
        float = {
          transparent = true,
          solid = true,
        },
        transparent_background = true,
      })
    end,
  },
  {
    "rose-pine/neovim",
    config = function()
      vim.opt.termguicolors = true
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
      })
    end,
  },
}
