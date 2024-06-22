local options = {
    formatters_by_ft = {
        lua = { 'stylua' },
        css = { 'prettierd' },
        html = { 'prettierd' },
        javascript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
    },

    format_on_save = {
        timeout_ms = 400,
        lsp_fallback = true,
    },
}

require('conform').setup(options)
