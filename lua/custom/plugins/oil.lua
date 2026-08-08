vim.pack.add {
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('oil').setup {
  default_file_explorer = true, -- replaces netrw
  delete_to_trash = true,
  columns = {
    'icon',
    'size',
  },
  win_options = {
    wrap = false,
    signcolumn = 'no',
    cursorcolumn = false,
    number = false,
    relativenumber = false,
  },
  view_options = {
    show_hidden = true,
  },
  float = {
    padding = 4,
    max_width = 80,
    max_height = 30,
    border = nil,
  },
}

-- Open oil in current file's directory (floating)
vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open file explorer (float)' })

-- Open oil in project root
vim.keymap.set('n', '<leader>T', function() require('oil').open_float(vim.fn.getcwd()) end, { desc = 'Open file explorer at root (float)' })
