local ls = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("lua",{
    s("hello",{
        t('print("hello world")')
    })
})
