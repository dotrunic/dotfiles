-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.schedule(function()
      vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = "NONE" })
    end)
  end,
})
