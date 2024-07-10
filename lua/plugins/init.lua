local plugins = {
	"treesitter",
        "nvimtree",
	"presence",
        "autopairs",
        --"autotag",
        "luasnip",
        "glow",
	"harpoon",
        "nvim-highlight-cols",
        "vim-ray"
}

for index,plugin in pairs(plugins) do
	require("plugins.p-"..plugin)
end

