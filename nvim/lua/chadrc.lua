---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = 'chadracula-evondev',
}

M.ui = {
    statusline = {
        theme = 'default', -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = 'round',
        order = nil,
        modules = nil,
    },

    telescope = { style = 'bordered' },
}

M.term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.4, ['bo sp'] = 0.3, ['bo vsp'] = 0.2 },
    float = {
        relative = 'editor',
        row = 0.25,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = 'single',
    },
}

M.mason = {
    cmd = true,
    pkgs = {
        'css-lsp',
        'eslint-lsp',
        'html-lsp',
        'lua-language-server',
        'prettier',
        'prettierd',
        'stylua',
        'tailwindcss-language-server',
        'typescript-language-server',
    },
}
return M
