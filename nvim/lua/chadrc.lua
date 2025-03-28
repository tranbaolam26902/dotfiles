---@type ChadrcConfig
local M = {}
local baseColor = '#252434'
local tabuflineAccent = '#45475a'

M.base46 = {
    theme = 'catppuccin',
    transparency = true,
    hl_override = {
        Visual = { bg = '#0b192c' },
        CursorLine = { bg = baseColor },
        LineNr = { fg = '#888888' },
        Comment = { fg = '#888888', italic = true },
        ['@comment'] = { link = 'Comment' },
        WinSeparator = { fg = 'white' },
        TelescopeBorder = { fg = 'white' },
        TelescopePromptBorder = { fg = 'white' },
        NvimTreeWinSeparator = { fg = 'white' },
        NvimTreeCursorLine = { bg = baseColor },
        TbFill = { bg = tabuflineAccent },
        TbTabOn = { bg = tabuflineAccent },
        TbTabOff = { bg = tabuflineAccent },
        TbBufOn = { fg = 'white', bg = tabuflineAccent },
        TbBufOnClose = { bg = tabuflineAccent },
        TbBufOnModified = { bg = tabuflineAccent },
        TbBufOff = { bg = tabuflineAccent },
        TbBufOffClose = { bg = tabuflineAccent },
        TbBufOffModified = { bg = tabuflineAccent },
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

    tabufline = {
        order = { 'buffers' }, -- hide NvimTreeOffset and close all button
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
        'prisma-language-server',
        'stylua',
        'tailwindcss-language-server',
        'typescript-language-server',
    },
}

return M
