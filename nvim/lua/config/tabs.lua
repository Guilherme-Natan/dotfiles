-- 4 whitespaces tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- 2 whitespaces for some filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ruby", "eruby", "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})


