return function()
    vim.lsp.handlers['textDocument/signatureHelp'] = nil -- disable focus Signature Help Modal

    require('nvchad.configs.lspconfig').defaults()

    local lspconfig = require 'lspconfig'

    local servers = { 'html', 'tailwindcss', 'ts_ls' }
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
            -- vim.keymap.set('n', '<leader>fm', function()
            --     vim.cmd 'EslintFixAll'
            --     vim.lsp.buf.format { async = true }
            -- end, { buffer = bufnr, desc = 'Eslint Fix + Format' })
        end,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end
