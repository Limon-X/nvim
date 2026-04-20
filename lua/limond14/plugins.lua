local vim = vim
local builtin = ('telescope.builtin')

--vim.call('plug#begin')

--List your plugins here

vim.pack.add({
    'tpope/vim-sensible',
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'mrloop/telescope-git-branch.nvim',
    'nosduco/remote-sshfs.nvim',
    'junegunn/fzf',
    'linrongbin16/fzfx.nvim',
    'lewis6991/hover.nvim',
    'nuvic/flexoki-nvim',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'neovim/nvim-lspconfig'
})
-- Plug('nvim-treesitter/nvim-treesitter')
-- Plug('nvim-treesitter/playground')
-- idk why it's ther


require('fzfx').setup()

require("telescope").setup()

-- VERY BIG HOVER
require('hover').config({
  --- List of modules names to load as providers.
  --- @type (string|Hover.Config.Provider)[]
  providers = {
    'hover.providers.diagnostic',
    'hover.providers.lsp',
    'hover.providers.dap',
    'hover.providers.man',
    -- 'hover.providers.dictionary',
    -- Optional, disabled by default:
    -- 'hover.providers.gh',
    -- 'hover.providers.gh_user',
    -- 'hover.providers.jira',
    -- 'hover.providers.fold_preview',
    'hover.providers.highlight',
  },
  preview_opts = {
    border = 'single'
  },
  -- Whether the contents of a currently open hover window should be moved
  -- to a :h preview-window when pressing the hover keymap.
  preview_window = false,
  title = true,
  mouse_providers = {
    'hover.providers.lsp',
  },
  mouse_delay = 1000
})



--Setup Keymaps
vim.keymap.set('n', 'K', function()
  require('hover').open()
end, { desc = 'hover.nvim (open)' })

vim.keymap.set('n', 'gK', function()
  require('hover').enter()
end, { desc = 'hover.nvim (enter)' })

vim.keymap.set('n', '<C-p>', function()
    require('hover').hover_switch('previous')
end, { desc = 'hover.nvim (previous source)' })

vim.keymap.set('n', '<C-n>', function()
    require('hover').hover_switch('next')
end, { desc = 'hover.nvim (next source)' })

-- Mouse support
vim.keymap.set('n', '<MouseMove>', function()
  require('hover').mouse()
end, { desc = 'hover.nvim (mouse)' })
