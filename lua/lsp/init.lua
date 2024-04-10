local plugins = {
    "lspconfig",
    "mason",
    "completion",
    "neodev"
}

for index,plugin in pairs(plugins) do
	require("lsp."..plugin)
end

