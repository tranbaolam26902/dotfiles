---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = 'catppuccin',
    transparency = true,
    hl_override = {
        Visual = { bg = '#0b192c' },
        CursorLine = { bg = '#252434' },
        LineNr = { fg = '#888888' },
        Comment = { fg = '#888888', italic = true },
        ['@comment'] = { link = 'Comment' },
        WinSeparator = { fg = '#ffffff' },
        TelescopeBorder = { fg = '#ffffff' },
        TelescopePromptBorder = { fg = '#ffffff' },
        NvimTreeWinSeparator = { fg = '#ffffff' },
        NvimTreeCursorLine = { bg = '#252434' },
    },
}

M.ui = {
    statusline = {
        theme = 'default', -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = 'default',
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
        row = 0.20,
        col = 0.20,
        width = 0.6,
        height = 0.5,
        border = 'rounded',
    },
}

M.mason = {
    cmd = true,
    pkgs = {
        'css-lsp',
        'eslint-lsp',
        'eslint_d',
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
