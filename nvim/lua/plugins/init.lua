return {
    {
        'stevearc/conform.nvim',
        event = 'BufWritePre', -- format on save
        config = function()
            require 'configs.conform'
        end,
    },

    {
        'neovim/nvim-lspconfig',
        config = function()
            require('nvchad.configs.lspconfig').defaults()
            require 'configs.lspconfig'
        end,
    },

    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'lua-language-server',
                'stylua',
                'html-lsp',
                'css-lsp',
                'astro-language-server',
                'typescript-language-server',
                'tailwindcss-language-server',
                'eslint-lsp',
                'prettier',
                'prettierd',
            },
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                'lua',
                'vim',
                'vimdoc',
                'astro',
                'html',
                'css',
                'javascript',
                'typescript',
                'tsx',
            },
        },
    },

    {
        'windwp/nvim-ts-autotag',
        dependencies = 'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-ts-autotag').setup {}
        end,
        lazy = false,
        event = { 'BufReadPre', 'BufNewFile' },
    },

    {
        'nvim-lua/plenary.nvim',
        lazy = false,
    },

    {
        'laytan/tailwind-sorter.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        on_save_pattern = { '*.html', '*.jsx', '*.tsx' },
        lazy = false,
        build = 'cd formatter && npm ci && npm run build',
        config = true,
    },
}
