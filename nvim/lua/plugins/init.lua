return {
    {
        'stevearc/conform.nvim',
        event = 'BufWritePre', -- enables format on save
        opts = require 'configs.conform',
    },

    {
        'neovim/nvim-lspconfig',
        config = function()
            require 'configs.lspconfig'
        end,
    },

    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                'lua',
                'vim',
                'vimdoc',
                'html',
                'css',
                'javascript',
                'typescript',
                'tsx',
                'prisma',
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
        'folke/ts-comments.nvim',
        opts = {},
        event = 'VeryLazy',
        enabled = vim.fn.has 'nvim-0.10.0' == 1,
    },

    {
        'williamboman/mason.nvim',
        opts = {
            ui = {
                border = 'rounded',
            },
        },
    },

    {
        'mcauley-penney/visual-whitespace.nvim',
        config = true,
    },

    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                current_line_blame = true,
                current_line_blame_opts = {
                    delay = 0,
                },
            }
        end,
    },
}
