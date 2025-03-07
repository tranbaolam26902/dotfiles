require 'nvchad.mappings'

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>', opts) -- shows diagnostic
map('n', 'sv', ':vsplit<CR>', opts) -- splits the window vertically
map('n', '<leader>X', ':%bd<CR>', opts) -- deletes all buffers
map('n', '<leader>x', ':bd<CR>', opts) -- delete current buffer
map('n', '<leader>cn', ':NvimTreeCollapse<CR>', opts) -- collapses NvimTree
map('n', '<leader>cc', '[m', opts) -- go to current context
map('n', '<leader>gm', ':Gitsigns blame_line<CR>', opts) -- shows git commit message
