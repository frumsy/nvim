vim.keymap.set('v', '<C-_>', ':CommentToggle<CR>', { noremap = true, silent = true })
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

-- commands for copying text
vim.api.nvim_set_keymap('n', 'x', 'd', { noremap = true })
vim.api.nvim_set_keymap('v', 'x', 'd', { noremap = true })

-- better commenting
local function toggle_comment()
  local CommentApi = require 'Comment.api'
  local line = vim.api.nvim_get_current_line()
  local postCommentCommand = ''
  if line:match '^%s*$' then
    postCommentCommand = '<escape>A '
  end
  CommentApi.toggle.linewise.current()
  vim.api.nvim_input(postCommentCommand)
end
vim.keymap.set('i', '<C-_>', toggle_comment, { noremap = true, silent = true })
vim.keymap.set('n', '<C-_>', toggle_comment, { noremap = true, silent = true })

-- delete until end of line and beginning of line respectively
vim.keymap.set('n', 'de', 'd$', { noremap = true, silent = true })
vim.keymap.set('n', 'dE', 'd0', { noremap = true, silent = true })

-- remap shift + j and shift + k to set visual mode if not in it and move down
vim.keymap.set('n', '<S-j>', 'vj', { noremap = true, silent = true })
vim.keymap.set('v', '<S-j>', 'j', { noremap = true, silent = true })
vim.keymap.set('n', 'K', 'vk', { noremap = true, silent = true })
vim.keymap.set('v', 'K', 'k', { noremap = true, silent = true })

-- remap shift + h and shift + l to set visual mode if not in it and move leftcol
vim.keymap.set('n', 'H', 'vh', { noremap = true, silent = true })
vim.keymap.set('n', 'L', 'vl', { noremap = true, silent = true })
vim.keymap.set('v', 'H', 'h', { noremap = true, silent = true })
vim.keymap.set('v', 'L', 'l', { noremap = true, silent = true })

-- remape ctrl + L and ctrl + H to move forward a word and backward a word
vim.keymap.set({ 'v', 'n' }, '<C-l>', 'w', { noremap = true, silent = true })
vim.keymap.set({ 'v', 'n' }, '<C-h>', 'b', { noremap = true, silent = true })
vim.keymap.set('i', '<C-h>', '<C-left>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-l>', '<C-right>', { noremap = true, silent = true })

vim.keymap.set({ 'i', 'n' }, '<C-S-h>', '<escape>vb', { noremap = true, silent = true })
vim.keymap.set({ 'i', 'n' }, '<C-S-l>', '<escape>vw', { noremap = true, silent = true })
vim.keymap.set('v', '<C-S-l>', 'w', { noremap = true, silent = true })
vim.keymap.set('v', '<C-S-h>', 'b', { noremap = true, silent = true })

-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--currently not using:
-- vim.api.nvim_set_keymap('n', 'X', '"_X', { noremap = true })
-- vim.api.nvim_set_keymap('v', 'X', '"_X', { noremap = true })

-- some vscode like maps for selecting text
-- vim.api.nvim_set_keymap('i', '<C-d>', '', { noremap = true })
