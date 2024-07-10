vim.g.mapleader = " "

local remap = vim.keymap.set

-- Primeagen Remaps

-- <Visual> Moving selection up and down
remap("v", "J", ":m '>+1<CR>gv=gv")
remap("v", "K", ":m '>-2<CR>gv=gv")

remap("n", "J", "mzJ`z")

remap("n", "<C-d>", "<C-d>zz" )
remap("n", "<C-u>", "<C-u>zz" )

-- preserve the paste buffer
remap("x", "<leader>p", "\"_dP" )

--remap ( 'n' , '<leader>t' , vim.cmd.Ex) --Netrw disabled

-- File Explorer : Nvim Tree --
remap("n", "<leader>t", ":NvimTreeToggle<CR>")

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
local harpoon = require("harpoon")
harpoon:setup()

remap("n", "<leader>a", function() harpoon:list():add() end)
remap("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

remap("n", "<C-h>", function() harpoon:list():select(1) end)
remap("n", "<C-t>", function() harpoon:list():select(2) end)

remap("n", "<C-n>", function() harpoon:list():select(3) end)
remap("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
remap("n", "<C-S-P>", function() harpoon:list():prev() end)
remap("n", "<C-S-N>", function() harpoon:list():next() end)

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

-- LuaSnip
local ls = require("luasnip")
remap({"i","s"},"<A-k>",function()
    if ls.expand_or_jumpable() then
        ls_expand_or_jump()
    end
end,{silent=true})

remap({"i","s"},"<A-j>",function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end,{silent=true})
-- New Mappings
remap("n", "[p", function()
    vim.cmd(":%s/\r//g")
end)

-- Ray 
remap({"v"},"<F5>", function()
    vim.cmd("Ray")
end,{})
