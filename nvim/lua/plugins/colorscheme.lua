return {
  {
    "Shatur/neovim-ayu",
    lazy = false, -- load during startup
    priority = 1000, -- make sure it loads before other UI stuff
    config = function()
      -- enable true colors
      vim.opt.termguicolors = true

      -- choose your variant: "light", "mirage", or "dark"
      require("ayu").setup({
        mirage = false, -- set to true to use the mirage variant
        bg = j,
      })

      -- set the theme
      vim.cmd.colorscheme("ayu-dark")
    end,
  },
}
