return {
    config = {
        function()
            require('tailwind-tools').setup()

            -- Auto-sort Tailwind classes before saving
            vim.api.nvim_create_autocmd('BufWritePre', {
                pattern = { '*.html', '*.jsx', '*.tsx', '*.vue' },
                callback = function()
                    vim.cmd 'TailwindSort'
                end,
            })
        end,
    },
    cond = function()
        -- Check for Tailwind config file in root directory
        local root = vim.fn.getcwd()
        local has_config = vim.fn.filereadable(root .. '/tailwind.config.js') == 1
            or vim.fn.filereadable(root .. '/tailwind.config.ts') == 1
        return has_config
    end,
}
