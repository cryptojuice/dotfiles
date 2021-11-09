local g, keymap = vim.g, vim.api.nvim_set_keymap

g.mapleader = ','

keymap('i', 'jj', '<Esc>', {})
keymap('n', '<Leader>/', ':nohl', {})

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
