require 'nvchad.options'

vim.o.autoread = true
vim.api.nvim_create_autocmd({ 'BufEnter', 'CursorHold', 'FocusGained' }, {
    command = 'checktime',
}) -- auto refresh
vim.o.cursorlineopt = 'both' -- cursorline
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 -- scroll offset
vim.opt.ignorecase = true -- ignores case in search patterns
vim.opt.inccommand = 'split' -- previews changes before replace
vim.opt.wrap = true
vim.opt.breakindent = true -- indents wrapped lines
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wildignore:append { '*/node_modules/*' } -- ignores node_modules folder
vim.opt.fillchars = { fold = ' ' }
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.cmd [[autocmd FileType * set formatoptions-=ro]] -- disables auto comment in new lines
