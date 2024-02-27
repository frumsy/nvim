-- [[keymasp.lua]]
local niv = { 'n', 'i', 'v' }
-- add vscode like copy and paste
vim.keymap.set(niv, '<C-c>', '"+y', { noremap = true, silent = true })

-- add vscode like telescope
vim.keymap.set(niv, '<C-p>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })

-- select all:
vim.keymap.set({ 'i', 'n' }, '<C-a>', function()
  vim.cmd 'normal! ggVG'
end, { noremap = true, silent = true })
vim.keymap.set('v', '<C-a>', '<escape>ggVG', { noremap = true, silent = true })

-- add verical split
vim.keymap.set('n', '<C-\\>', ':vsplit<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-\\>', '<escape>:vsplit<CR>', { noremap = true, silent = true })

--save file
vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR>', { noremap = true })
vim.keymap.set('i', '<C-s>', '<escape>:w<CR>a', { noremap = true })

vim.keymap.set('i', '<C-_>', require('Comment.api').toggle.linewise.current, { noremap = true, silent = true })
vim.keymap.set('n', '<C-_>', require('Comment.api').toggle.linewise.current, { noremap = true, silent = true })

-- delete cuts to 'a' register
vim.api.nvim_set_keymap('n', 'd', '"ad', { noremap = true })
vim.api.nvim_set_keymap('v', 'd', '"ad', { noremap = true })

-- delete to end of line cuts to 'a' register
vim.api.nvim_set_keymap('n', 'D', '"aD', { noremap = true })
vim.api.nvim_set_keymap('v', 'D', '"aD', { noremap = true })

-- commands for cutting text
vim.api.nvim_set_keymap('n', '<C-x>', 'Vx', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-x>', '<escape>Vxi', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-x>', 'x', { noremap = true })

-- maps x to d
vim.api.nvim_set_keymap('n', 'x', 'd', { noremap = true })
vim.api.nvim_set_keymap('v', 'x', 'd', { noremap = true })

--currently not using:
-- vim.api.nvim_set_keymap('n', 'X', '"_X', { noremap = true })
-- vim.api.nvim_set_keymap('v', 'X', '"_X', { noremap = true })

-- some vscode like maps for selecting text
