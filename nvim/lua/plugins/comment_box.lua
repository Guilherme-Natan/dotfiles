return  { 
    "LudoPinelli/comment-box.nvim", 
    version = "*",
    event = "VeryLazy",
    config = function()
        local keymap = vim.keymap.set

        -- Comment box
        keymap({ "n", "v" }, "<Leader>cb", "<Cmd>CBlcbox7<CR>", opts)

        -- Comment line
        keymap({ "n", "v" }, "<Leader>cl", "<Cmd>CBlcline13<CR>", opts)

        -- Set box and line size
        require('comment-box').setup({
        doc_width = 120,
        box_width = 100,
        line_width = 120,
    })
    end

}

