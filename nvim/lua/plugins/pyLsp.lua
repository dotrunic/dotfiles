return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  maxLineLength = 120, -- or 200, whatever you prefer
                  ignore = { "E302" }, -- disable "expected 2 blank lines"
                },
              },
            },
          },
        },
      },
    },
  },
}
