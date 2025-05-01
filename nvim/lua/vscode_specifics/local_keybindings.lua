local keymap = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

-- Commands for the latex workshop plugin
autocmd("FileType", {
  pattern = "tex",
  callback = function(args)
    -- \s opens the surround menu
    keymap("x", "<LocalLeader>s", function() vscode.call('latex-workshop.surround') end, {buffer = args.buf})
  end
})
