require "lualine".setup {
    sections = {
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    }
}
