require('tailwind-tools').setup()

-- Auto-sort Tailwind classes before saving
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.html', '*.jsx', '*.tsx', '*.vue' },
    callback = function()
        vim.cmd 'TailwindSort'
    end,
})
