return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    config = function()
      require("ayu").setup({
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
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        float = {
          transparent = true,
          solid = false,
        },
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
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        terminal_colors = true,
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        hide_fillchars = true,

        colors = {
          dark = {
            fg = "#E6E6E6",
          },
        },
      })
    end,
  },
}
