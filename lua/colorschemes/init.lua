local currentScheme = "gruvbox"
vim.o.background = "light"

require("colorschemes."..currentScheme)

vim.cmd("colorscheme "..currentScheme)
