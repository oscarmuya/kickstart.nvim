-- my custom keymaps
--

vim.keymap.set('n', '<leader>e', '<cmd>wincmd w<cr>', { desc = 'Toggle between windows' })
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without updating the register' })
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save file' })
