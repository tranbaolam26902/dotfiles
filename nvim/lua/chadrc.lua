local M = {}

M.ui = {
    theme = 'chadracula-evondev',

    statusline = {
        theme = 'minimal', -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = 'round',
        order = nil,
        modules = nil,
    },

    telescope = { style = 'bordered' },
}

return M
