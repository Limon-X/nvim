vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.Ex) -- because
vim.keymap.set("n", "<leader>tm", ':new<CR>:term<CR>')

-- change relative number
vim.keymap.set("n", "<leader>rn", ':set rnu!<CR>')
