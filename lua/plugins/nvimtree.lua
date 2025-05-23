-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {

    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local function set_transparency ()
    vim.cmd("highlight NvimTreeNormal guibg=none")
    vim.cmd("highlight Normal guibg=none")
    vim.cmd("highlight NormalNC guibg=none")
end

vim.api.nvim_create_autocmd({"BufWinEnter", "WinEnter", "VimResized"}, {
  callback = set_transparency
})
