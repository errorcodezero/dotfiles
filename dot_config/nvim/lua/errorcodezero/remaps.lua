local nvim_tree = require("nvim-tree.api")
local telescope = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<C-b>', telescope.live_grep, {})
vim.keymap.set('n', '<C-y>', telescope.buffers, {})
vim.keymap.set('n', 't', nvim_tree.tree.toggle, {})
