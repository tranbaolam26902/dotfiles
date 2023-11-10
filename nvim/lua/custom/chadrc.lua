---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'catppuccin',
    statusline = {
        theme = "default",
        separator_style = "round",
        overriden_modules = nil,
    },
}
M.plugins = "custom.plugins"
vim.g.transparency = true

return M
