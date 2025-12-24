-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local function extend_opts(extra)
  return setmetatable(extra or {}, { __index = opts })
end

map("n", "<leader>ct", ":TailwindSort<CR>", extend_opts({ desc = "Shorts all Tailwind classes" })) -- shorts all Tailwind classes in current buffer

-- Normal mode tab switching
map("n", "<Tab>", ":bnext<CR>", extend_opts({ desc = "Next tab" }))
map("n", "<S-Tab>", ":bprevious<CR>", extend_opts({ desc = "Previous tab" }))
