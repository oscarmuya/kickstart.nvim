vim.pack.add {
  {
    src = 'https://github.com/obsidian-nvim/obsidian.nvim',
    version = vim.version.range '*', -- use latest release, remove to use latest commit
  },
}

require('obsidian').setup {
  legacy_commands = false, -- this will be removed in 4.0.0
  workspaces = {
    {
      name = 'personal',
      path = '~/vaults/personal',
    },
    {
      name = 'work',
      path = '~/vaults/work',
    },
  },
}

local map = vim.keymap.set

map('n', '<leader>oo', '<cmd>Obsidian quick_switch<cr>', { desc = '[O]bsidian Switch N[O]te' })
map('n', '<leader>os', '<cmd>Obsidian search<cr>', { desc = '[O]bsidian [S]earch Vault' })
map('n', '<leader>on', '<cmd>Obsidian new<cr>', { desc = '[O]bsidian [N]ew Note' })
map('n', '<leader>ot', '<cmd>Obsidian today<cr>', { desc = "[O]bsidian [T]oday's Note" })
map('n', '<leader>ob', '<cmd>Obsidian backlinks<cr>', { desc = '[O]bsidian [B]acklinks' })
map('n', '<leader>oi', '<cmd>Obsidian paste_img<cr>', { desc = '[O]bsidian Paste [I]mage' })

-- Open the general interactive action menu
map('n', '<leader>oa', '<cmd>Obsidian<cr>', { desc = '[O]bsidian [A]ctions Menu' })
