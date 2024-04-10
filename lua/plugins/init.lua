local plugins = {
	"treesitter",
        "nvimtree",
        "autopairs",
	"presence",
        "luasnip",
        "glow",
	"harpoon"
}

for index,plugin in pairs(plugins) do
	require("plugins.p-"..plugin)
end

