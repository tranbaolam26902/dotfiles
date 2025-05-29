return function()
    vim.lsp.handlers['textDocument/signatureHelp'] = nil -- disable focus Signature Help Modal

    require('nvchad.configs.lspconfig').defaults()

    local lspconfig = require 'lspconfig'

    local servers = { 'html', 'tailwindcss' }
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

    lspconfig.eslint.setup {
        on_attach = function(client, bufnr)
            nvlsp.on_attach(client, bufnr)

            -- auto-fix on save
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = bufnr,
                command = 'EslintFixAll',
            })

            -- add auto-fix to default format keybind
            vim.keymap.set('n', '<leader>fm', function()
                vim.cmd 'EslintFixAll'
                vim.lsp.buf.format { async = true }
            end, { buffer = bufnr, desc = 'Eslint Fix + Format' })
        end,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
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
