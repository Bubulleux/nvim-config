return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
        { "<leader>bp", ":BufferLineTogglePin<CR>", desc = "Toggle Buffer Pin" },
    },
    lazy = false,
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline")
        bufferline.setup {
            options = {
                separator_style = "slant",
                show_buffer_close_icons = false,
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "center"
                    }
                }
            }
        }
    end
}
