-- Relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- 4 whitespaces tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disables linewrap
vim.opt.wrap = false

-- Enables smart case sensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Changes linewidth to 120 (for commands like gqq)
vim.opt.textwidth = 120

-- Sets pure black background for only kitty and tmux (for kitty background compability)
if vim.env.TERM == "xterm-kitty" or vim.env.TERM == "tmux-256color" then
    vim.opt.termguicolors = true
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
end


