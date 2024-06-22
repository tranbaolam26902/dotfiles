require 'nvchad.mappings'

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>')
