-- Disables softwrap
vim.opt.wrap = false

-- Changes linewidth to 120 (for commands like gqq)
vim.opt.textwidth = 120

-- Sets linewidth for .tex files to 80
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "plaintex", "latex" },
  callback = function()
    vim.opt_local.textwidth = 80
  end,
})
