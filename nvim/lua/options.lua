require 'nvchad.options'

vim.o.cursorlineopt = 'both' -- cursorline
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 -- scroll offset
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.inccommand = 'split' -- preview changes before replace
vim.opt.wrap = true
vim.opt.breakindent = true -- indent wrapped lines
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.wildignore:append { '*/node_modules/*' } -- ignore node_modules folder
vim.opt.fillchars = { fold = ' ' }
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.api.nvim_set_hl(0, 'Comment', { fg = '#888888' })
vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
vim.cmd [[autocmd FileType * set formatoptions-=ro]] -- disable auto comment in new lines
