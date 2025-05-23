local currentScheme = "nord"
vim.o.background = "dark"

require("colorschemes."..currentScheme)

vim.cmd("colorscheme "..currentScheme)

-- Note: this config is also in nvimtree for transp on each toggle
vim.cmd("highlight NvimTreeNormal guibg=none")
vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight NormalNC guibg=none")
