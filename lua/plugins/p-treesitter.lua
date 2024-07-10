require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  -- depreciated after ts-autotag 1.0.0
  --autotag = {
  --    enable = true,
  --}
}
