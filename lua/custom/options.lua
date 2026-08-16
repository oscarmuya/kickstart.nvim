-- Use spaces instead of tabs
vim.o.expandtab = true

-- Set indentation width to 4 spaces
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Required for obsidian.nvim UI features (pretty links, checkboxes, concealing markup)
-- NOTE: Might cause side-effects when editting JSON - causes double quotes " in .json files to be hidden by default until cursor moves over them
-- vim.opt.conceallevel = 2
