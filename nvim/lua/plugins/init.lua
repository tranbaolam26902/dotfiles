return {
    {
        'stevearc/conform.nvim',
        event = 'BufWritePre', -- enables format on save
        opts = require 'configs.conform',
    },

    {
        'neovim/nvim-lspconfig',
        config = require 'configs.lspconfig',
    },

    {
        'nvim-treesitter/nvim-treesitter',
        opts = require 'configs.nvim-treesitter',
    },

    {
        'windwp/nvim-ts-autotag',
        dependencies = 'nvim-treesitter/nvim-treesitter',
        config = require 'configs.nvim-ts-autotag',
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
        opts = require 'configs.mason',
    },

    {
        'lewis6991/gitsigns.nvim',
        config = require 'configs.gitsigns',
    },

    {
        'luckasRanarison/tailwind-tools.nvim',
        lazy = false,
        config = require 'configs.tailwind-tools',
    },
}
