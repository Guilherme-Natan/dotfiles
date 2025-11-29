-- Relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Enables smart case sensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets pure black background for only kitty and tmux (for kitty background compability)
if vim.env.TERM == "xterm-kitty" or vim.env.TERM == "tmux-256color" then
    vim.opt.termguicolors = true
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
end


