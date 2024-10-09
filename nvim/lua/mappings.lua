require 'nvchad.mappings'

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>', opts)
map('n', 'sv', ':vsplit<CR> <BAR> :Telescope find_files<CR>', opts)

vim.cmd 'TailwindSortOnSaveToggle' -- sort tailwind classes on save
