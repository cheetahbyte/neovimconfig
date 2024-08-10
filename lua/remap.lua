vim.g.mapleader = " "
vim.keymap.set("n", "<leader>g", '<cmd>LazyGit<CR>', { desc = "LazyGit", noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
