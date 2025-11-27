vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- by limond14
vim.keymap.set("n", "<leader>q", vim.cmd.Ex) -- edited by hapetu
vim.keymap.set("n", "<leader>tm", ':new<CR>:term<CR>')

vim.keymap.set("n", "<leader>rn", ':set rnu!<CR>')

vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{}', '{}', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '(<CR>', '(<CR>)<Esc>O', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '()', '()', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', "'", "''<Left>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<C-/>",'<Plug>(comment_toggle_linewise_current)', { noremap = true, silent = true })

vim.api.nvim_set_keymap("x","<C-/>",'<Plug>(comment_toggle_linewise_visual)', { noremap = true, silent = true })
