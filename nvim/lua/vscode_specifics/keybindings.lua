local keymap = vim.keymap.set

-- Set autoformat keybindings
keymap({"n", "x"}, "gq", "gq", {})
keymap("n", "gqq", "gqq", {})

vscode = require('vscode')

-- go and gO search symbols
keymap("n", "go", function() vscode.call('workbench.action.gotoSymbol') end)
keymap("n", "gO", function() vscode.call('workbench.action.showAllSymbols') end)

-- Add breakpoints and logpoints
keymap('n', '<Leader>b', function() vscode.call('editor.debug.action.toggleBreakpoint') end)
keymap('n', '<Leader>lp', function() vscode.call('editor.debug.action.addLogPoint') end)

-- Inserts a snippet
keymap("n", "<Leader>sp", function() vscode.call('editor.action.insertSnippet') end)
-- Surround with tag
keymap({"n", "x"}, "<Leader>ys", function() vscode.call('editor.emmet.action.wrapWithAbbreviation') end)

-- Searches keyword under cursor in zeal (requires vscode-dash extension)
keymap('n', '<Leader>ze', function() vscode.call('extension.dash.specific') end)

