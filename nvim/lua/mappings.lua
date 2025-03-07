require 'nvchad.mappings'

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>', opts) -- shows diagnostic
map('n', 'sv', ':vsplit<CR>', opts) -- splits the window vertically
map('n', '<leader>X', ':%bd<CR>', opts) -- deletes all buffers
map('n', '<leader>x', ':bd<CR>', opts) -- delete current buffer
map('n', '<leader>cn', ':NvimTreeCollapse<CR>', opts) -- collapses NvimTree
vim.keymap.set('n', '<leader>cc', function()
    require('treesitter-context').go_to_context(vim.v.count1)
end, { silent = true, desc = 'Jump to Treesitter Parent Context' }) -- jumps to context (upwards)
map('n', '<leader>gm', ':Gitsigns blame_line<CR>', opts) -- shows git commit message
