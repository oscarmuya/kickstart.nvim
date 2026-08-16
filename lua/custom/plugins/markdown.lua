vim.pack.add {
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}

require('render-markdown').setup {}

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.concealcursor = 'nc'
  end,
})
