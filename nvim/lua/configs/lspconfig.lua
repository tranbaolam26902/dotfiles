return function()
    vim.lsp.handlers['textDocument/signatureHelp'] = nil

    require('nvchad.configs.lspconfig').defaults()

    local lspconfig = require 'lspconfig'

    local servers = { 'html', 'ts_ls', 'eslint', 'tailwindcss', 'prismals' }
    local nvlsp = require 'nvchad.configs.lspconfig'

    -- lsps with default config
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = nvlsp.on_attach,
            on_init = nvlsp.on_init,
            capabilities = nvlsp.capabilities,
        }
    end

    -- disables the warning: unkown at rule @tailwind
    lspconfig.cssls.setup {
        on_attach = nvlsp.on_attach,
        capabilities = nvlsp.capabilities,
        settings = {
            css = {
                lint = {
                    unknownAtRules = 'ignore',
                },
            },
            scss = {
                lint = {
                    unknownAtRules = 'ignore',
                },
            },
        },
    }

    lspconfig.volar.setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
        filetypes = { 'vue' },
        init_options = {
            vue = {
                hybridMode = false,
            },
        },
    }
end
