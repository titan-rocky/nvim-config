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
create_command("Rsc", function()
    return vim.cmd(":!mkdir -p %:h/rust-build && rustc %:r.rs --out-dir %:h/rust-build && echo \"Build Completed\"")
end, {})
create_command("Rse", function()
    return vim.cmd(":!mkdir -p %:h/rust-build && rustc %:r.rs --out-dir %:h/rust-build && %:h/rust-build/%:t:r")
end, {})
