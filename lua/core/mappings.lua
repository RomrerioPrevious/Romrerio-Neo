vim.g.mapleader = " "

-- Any
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>qq', ':qa!<CR>')

-- NeoTree
vim.keymap.set('n', '<leader>o', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree left<CR>')
vim.keymap.set('n', '<leader>ec', ':Neotree close<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')

