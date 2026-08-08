vim.pack.add { 'https://github.com/folke/snacks.nvim' }

require('snacks').setup {
  terminal = { enabled = true },
  indent = { enabled = true },
}

vim.keymap.set({ 'n', 't' }, '<C-_>', function() Snacks.terminal.toggle() end, { desc = 'Toggle terminal' })
