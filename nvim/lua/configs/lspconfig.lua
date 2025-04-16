return function()
    vim.lsp.handlers['textDocument/signatureHelp'] = nil -- disable focus Signature Help Modal

    require('nvchad.configs.lspconfig').defaults()

    local lspconfig = require 'lspconfig'

    local servers = { 'html', 'eslint', 'tailwindcss' }
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

    local mason_registry = require 'mason-registry'
    local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path()
        .. '/node_modules/@vue/language-server'

    lspconfig.ts_ls.setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
        init_options = {
            plugins = {
                {
                    name = '@vue/typescript-plugin',
                    location = vue_language_server_path,
                    languages = { 'vue' },
                },
            },
        },
        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    }

    lspconfig.volar.setup {}
end
