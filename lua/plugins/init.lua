local plugins = {
	"treesitter",
        "nvimtree",
	"presence",
        "autopairs",
--        "autotag",
        "luasnip",
        "glow",
	"harpoon",
        "nvim_highlight_cols",
        "vim_ray",
        "nvim_transparent",
        "weather",
        "lualine"
}

for index,plugin in pairs(plugins) do
    require("plugins."..plugin)
    --print("Plugin "..plugin.." Loaded\n")
end

