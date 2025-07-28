require("lualine").setup{
    options = {
        theme = "nord"
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {function() return require("weather").strfeed end},
        lualine_z = {'location'}
    },
}
