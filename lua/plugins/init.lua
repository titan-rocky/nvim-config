local plugins = {
	"packer-config",
	"treesitter",
        "nvimtree",
	"presence"
}

for index,plugin in pairs(plugins) do
	require("plugins."..plugin)
end

