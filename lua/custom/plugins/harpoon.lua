-- Register and add plugins to runtimepath
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  {
    src = 'https://github.com/ThePrimeagen/harpoon',
    version = 'harpoon2',
  },
}

-- 2. Plugin Setup & Keymaps
local harpoon = require 'harpoon'

harpoon:setup {
  settings = {
    save_on_toggle = true,
    sync_on_ui_close = true,
  },
}

-- Add current file to harpoon
vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = 'Harpoon add file' })

-- Toggle harpoon quick menu
vim.keymap.set('n', '<leader>hh', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon menu' })

-- Jump to marked files (slots 1-5)
for i = 1, 5 do
  vim.keymap.set('n', '<leader>' .. i, function() harpoon:list():select(i) end, { desc = 'Harpoon file ' .. i })
end

-- Navigate prev/next in harpoon list
vim.keymap.set('n', '<leader>hp', function() harpoon:list():prev() end, { desc = 'Harpoon prev' })

vim.keymap.set('n', '<leader>hn', function() harpoon:list():next() end, { desc = 'Harpoon next' })

-- Telescope integration
vim.keymap.set('n', '<leader>ht', function()
  local conf = require('telescope.config').values
  local harpoon_files = harpoon:list()
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end
  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table { results = file_paths },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end, { desc = 'Harpoon telescope' })
