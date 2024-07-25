local currentScheme = "gruvbox"
vim.o.background = "dark"

require("colorschemes."..currentScheme)

vim.cmd("colorscheme "..currentScheme)
