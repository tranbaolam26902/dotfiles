require 'nvchad.mappings'

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local function extend_opts(extra)
    return setmetatable(extra or {}, { __index = opts })
end

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>lf', ':lua vim.diagnostic.open_float()<CR>', extend_opts { desc = 'Show diagnostic' }) -- shows diagnostic
map('n', '<leader>ca', vim.lsp.buf.code_action, extend_opts { desc = 'LSP Code Action' }) -- triggers LSP code action
map('n', '<leader>ft', ':TailwindSort<CR>', extend_opts { desc = 'Shorts all Tailwind classes' }) -- shorts all Tailwind classes in current buffer
map('n', 'sv', ':vsplit<CR>', extend_opts { desc = 'Vertical split' }) -- splits the window vertically
map('n', '<leader>X', ':%bd<CR>', extend_opts { desc = 'Delete all buffers' }) -- deletes all buffers
map('n', '<leader>x', ':bd<CR>', extend_opts { desc = 'Delete current buffer' }) -- delete current buffer
map('n', '<leader>cn', ':NvimTreeCollapse<CR>', extend_opts { desc = 'Collapse NvimTree' }) -- collapses NvimTree
map('n', '<leader>gm', ':Gitsigns blame_line<CR>', extend_opts { desc = 'Show commit message' }) -- shows git commit message
