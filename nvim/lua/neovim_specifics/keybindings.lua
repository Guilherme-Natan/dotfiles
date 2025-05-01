local keymap = vim.keymap.set

-- Ctrl backspace and ctrl delete works as intended 
keymap({"i", "c"}, "<C-BS>", "<C-W>")
keymap("i", "<C-Del>", "X<Esc>ce") -- Couldn't get this one to work in command mode (not a great loss)

-- Ctrl / comments lines
keymap("n", "<C-/>", "gcc", { remap = true })
keymap("v", "<C-/>", "gc", { remap = true })
keymap("i", "<C-/>", "<C-o>gcc", { remap = true })

-- Move between buffers
keymap( {"n", "x", "i"}, "<C-Tab>", ':bnext<CR>', { noremap = true, silent = true })
keymap( {"n", "x", "i"}, "<C-S-Tab>", ':bprevious<CR>', { noremap = true, silent = true })


