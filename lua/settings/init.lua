require("settings.keymaps")
require("settings.commands")

local set = vim.opt
local globals = vim.g

set.termguicolors = true
set.clipboard:append("unnamedplus")

set.number = true -- line numbers
set.autoindent = true
vim.opt.mouse = ""

--- tab and indentation
vim.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
set.relativenumber = true
set.smartindent = true
set.textwidth = 96
set.virtualedit = "onemore"

--- version history
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.nvim/undodir"
set.undofile = true
