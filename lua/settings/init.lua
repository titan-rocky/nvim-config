require("settings.keymaps")
require("settings.commands")

local set = vim.opt

set.termguicolors = true
set.clipboard:append("unnamedplus")

set.number = true -- line numbers
set.autoindent = true
vim.opt.mouse = ""

-- Disable Netrw
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

--- tab and indentation
vim.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
set.relativenumber = true
set.smartindent = true
set.textwidth = 96
set.virtualedit = "onemore"
