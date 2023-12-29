return {
    "Vigemus/iron.nvim",
    lazy = true,
    -- keys = {
    --     { "<leader>i", "", desc = "+iron"},
    --     { "<leader>il",  "", desc = ""},
    --     { "<leader>if",  "", desc = ""},
    --     { "<leader>ic",  "", desc = ""},
    --     { "<leader>im",  "", desc = ""},
    --     { "<leader>iM",  "", desc = ""},
    --     { "<leader>if",  "", desc = ""},
    --     { "<leader>if",  "", desc = ""},
    --     { "<leader>if",  "", desc = ""},
    -- },
    config = function(_, opts)
        iron = require("iron.core")
        iron.setup {
            config = {
                -- Whether a repl should be discarded or not
                scratch_repl = true,
                -- Your repl definitions come here
                repl_definition = {
                    sh = {
                        command = { "zsh" }
                    },
                    ocaml = {
                        command = { "utop" }
                    }
                },
                -- How the repl window will be displayed
                -- See below for more information
                repl_open_cmd = require('iron.view').right(70),
            },
            -- Iron doesn't set keymaps by default anymore.
            -- You can set them here or manually add keymaps to the functions in iron.core
            keymaps = {
                send_motion = "<leader>ic",
                visual_send = "<leader>ic",
                send_file = "<leader>if",
                send_line = "<leader>il",
                send_until_cursor = "<leader>iu",
                send_mark = "<leader>im",
                mark_motion = "<leader>iM",
                mark_visual = "<leader>iM",
                remove_mark = "<leader>id",
                cr = "<leader>i<cr>",
                interrupt = "<leader>i<space>",
                exit = "<leader>iq",
                clear = "<leader>ic",
            },
            -- If the highlight is on, you can change how it looks
            -- For the available options, check nvim_set_hl
            highlight = {
                italic = true
            },
            ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
        }
    end
}
