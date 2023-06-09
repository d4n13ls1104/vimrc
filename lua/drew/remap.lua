vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>", {})

vim.opt.mouse = 'nvic'

vim.api.nvim_set_keymap('n', '<LeftDrag>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<LeftRelease>', '<Nop>', { noremap = true, silent = true })

