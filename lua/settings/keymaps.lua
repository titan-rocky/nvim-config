vim.g.mapleader = " "

local remap = vim.keymap.set


--remap ( 'n' , '<leader>t' , vim.cmd.Ex) --Netrw disabled
-- File Explorer : Nvim Tree --
remap("n", "<leader>t", ":NvimTreeToggle<CR>")
--

-- Telescope --

local builtin = require("telescope.builtin")

remap("n", "<leader>pf", builtin.find_files, {}) -- finds all files
remap("n", "<C-p>", builtin.git_files, {}) -- finds git files
remap("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
remap("n", "<leader>pg", builtin.live_grep, {})
remap("n", "<leader>pb", builtin.buffers, {})
remap("n", "<leader>ph", builtin.help_tags, {})
--

-- Harpoon --
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

remap("n", "<C-s>", mark.add_file)

remap("n", "<A-j>", function()
	ui.nav_file(1)
end)
remap("n", "<A-k>", function()
	ui.nav_file(2)
end)
--

-- UndoTree --
remap("n", "<leader>u", "<cmd>Telescope undo<CR>")
--

-- Fugitive --
remap("n", "<leader>gs", function()

	local ok, err = pcall(vim.cmd.Git)
	if err then

		print(err)
	end

end)

--
