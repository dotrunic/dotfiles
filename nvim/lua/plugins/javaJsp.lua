return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {},
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      require("jdtls").start_or_attach({
        cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
        root_dir = vim.fn.getcwd(),
      })
    end,
  },
}
