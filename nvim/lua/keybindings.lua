local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap( "x", "<C-c>", '"+y', { noremap = true }) --Ctrl c visual mode
keymap( {"i", "c"}, "<c-v>", '+', { noremap=true }) --Ctrl v insert and command mode
keymap( {"i", "c"}, "<A-v>", '<c-v>', { noremap=true }) --Alt v replaces the old ctrl v for insert and command mode

-- Split commands using alt
keymap({"n", "x"},  "<A-h>", "<C-w>h", { noremap = true })
keymap({"n", "x"},  "<A-j>", "<C-w>j", { noremap = true })
keymap({"n", "x"},  "<A-k>", "<C-w>k", { noremap = true })
keymap({"n", "x"},  "<A-l>", "<C-w>l", { noremap = true })
keymap({"n", "x"},  "<A-v>", "<C-w>v", { noremap = true })
keymap({"n", "x"},  "<A-s>", "<C-w>s", { noremap = true })

keymap("n", "<C-d>", "<C-d>zz", { noremap=true, desc = "Center cursor after moving down half-page"})
keymap("n", "<C-u>", "<C-u>zz", { noremap=true, desc = "Center cursor after moving up half-page"})
