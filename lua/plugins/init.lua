local plugins = {
	"packer-config",
	"treesitter",
        "nvimtree",
	"presence",
        "autopairs",
        "luasnip",
        "glow"
}

for index,plugin in pairs(plugins) do
	require("plugins."..plugin)
end

