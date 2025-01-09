require 'nvchad.mappings'

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>', opts) -- shows diagnostic
map('n', 'sv', ':vsplit<CR> <BAR> :Telescope find_files<CR>', opts) -- splits the window vertically and opens the file finder
map('n', '<leader>X', ':%bd<CR>', opts) -- deletes all buffers
map('n', '<leader>cn', ':NvimTreeCollapse<CR>', opts) -- collapses NvimTree
map('n', '<leader>gm', ':Gitsigns blame_line<CR>', opts) -- shows git commit message
