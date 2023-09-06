return {
    {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = function()
        -- local icons = require("lazyvim.config").icons
        -- local Util = require("lazyvim.util")

        return {
          options = {
            theme = "auto",
            globalstatus = true,
            disabled_filetypes = { statusline = { "dashboard", "alpha" } },
          },
            sections = {
                lualine_c = { { "filename", path = 1 } },
                lualine_x = { 'encoding', 'filetype' },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            }
          -- extensions = { "neo-tree", "lazy" },
        }
      end,
    }
}

