--- Harpoon ---
local ui = require("harpoon.ui")

local create_command = vim.api.nvim_create_user_command

vim.api.nvim_create_user_command("Hui", ui.toggle_quick_menu, { desc = "Opens Harpoon UI" })


--- Programming ---
vim.api.nvim_create_user_command("Jexe", function(args)
	vim.cmd(":!javac % && java " .. args["args"])
end, { desc = "Executes basic java file", nargs = "*" })


-- Compilation --
create_command("Pye", function()
	return vim.cmd(":!python3 %")
end, {})
create_command("Gcc", function()
	return vim.cmd(":!gcc %:r.c -o %:r.out && %:r.out")
end, {})
create_command("Gcci", function()
	return vim.cmd(":!gcc %:r.c -o %:r.out && %:r.out < %:r.in")
end, {})
create_command("Gpp", function()
	return vim.cmd(":!g++ %:r.cpp -o %:r.out && %:r.out")
end, {})
create_command("Gppi", function()
	return vim.cmd(":!g++ %:r.cpp -o %:r.out && %:r.out < %:r.in")
end, {})
