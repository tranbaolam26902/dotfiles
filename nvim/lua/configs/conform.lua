local options = {
    formatters_by_ft = {
        lua = { 'stylua' },
        json = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        javascript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettierd' },
    },

    format_on_save = {
        timeout_ms = 400,
        lsp_fallback = true,
    },
}

return options
