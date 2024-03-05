-- Previous manal config

-- dap.adapters.dart       = {
--     type = "executable",
--     command = "flutter",
--     -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
--     args = { "debug_adapter" }
-- }
--
-- dap.configurations.dart = {
--     {
--         type = "dart",
--         request = "launch",
--         name = "Launch Dart Program",
--         -- The nvim-dap plugin populates this variable with the filename of the current buffer
--         program = "${file}",
--         -- The nvim-dap plugin populates this variable with the editor's current working directory
--         cwd = "${workspaceFolder}",
--         args = { "--help" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
--     }
-- }
--
-- dap.adapters.cppdbg     = {
--     id = "cppdbg",
--     type = "executable",
--     command = vim.fn.stdpath "data" .. "/mason/bin/OpenDebugAD7",
-- }
--
-- dap.configurations.cpp  = {
--     {
--         name = "Launch file",
--         type = "cppdbg",
--         request = "launch",
--         program = function()
--             file = vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--             print(file)
--             return file
--         end,
--         cwd = '${workspaceFolder}',
--         stopAtEntry = true,
--     },
--     {
--         name = 'Attach to gdbserver :1234',
--         type = 'cppdbg',
--         request = 'launch',
--         MIMode = 'gdb',
--         miDebuggerServerAddress = 'localhost:1234',
--         miDebuggerPath = '/usr/bin/gdb',
--         cwd = '${workspaceFolder}',
--         program = function()
--             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--         end,
--     },
-- }


return {
    "mfussenegger/nvim-dap",
    dependencies = {
        -- fancy UI for the debugger
        {
            "rcarriga/nvim-dap-ui",
            -- stylua: ignore
            keys = {
                { "<leader>du", function() require("dapui").toggle({}) end, desc = "Dap UI" },
                { "<leader>de", function() require("dapui").eval() end,     desc = "Eval",  mode = { "n", "v" } },
            },
            opts = {},
            config = function(_, opts)
                local dap = require("dap")
                local dapui = require("dapui")
                dapui.setup(opts)
                dap.listeners.after.event_initialized["dapui_config"] = function()
                    dapui.open({})
                end
                dap.listeners.before.event_terminated["dapui_config"] = function()
                    dapui.close({})
                end
                dap.listeners.before.event_exited["dapui_config"] = function()
                    dapui.close({})
                end
            end,
        },

        {
            "theHamsta/nvim-dap-virtual-text",
            opts = {},
        },

        -- which key integration
        {
            "folke/which-key.nvim",
            optional = true,
            opts = {
                defaults = {
                    ["<leader>d"] = { name = "+debug" },
                    ["<leader>da"] = { name = "+adapters" },
                },
            },
        },

        -- mason.nvim integration
        {
            "jay-babu/mason-nvim-dap.nvim",
            dependencies = "mason.nvim",
            cmd = { "DapInstall", "DapUninstall" },
            opts = {
                -- Makes a best effort to setup the various debuggers with
                -- reasonable debug configurations
                automatic_installation = true,

                -- You can provide additional configuration to the handlers,
                -- see mason-nvim-dap README for more information
                handlers = {},

                -- You'll need to check that you have the required things installed
                -- online, please don't ask me how to install them :)
                ensure_installed = {
                    "python",
                    "cpp",
                    "dart",
                },
            },
        },
    },

    -- virtual text for the debugger

    keys = {
        {
            "<leader>dB",
            function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
            desc = "Breakpoint Condition"
        },
        {
            "<leader>db",
            function() require("dap").toggle_breakpoint() end,
            desc = "Toggle Breakpoint"
        },
        {
            "<leader>dc",
            function() require("dap").continue() end,
            desc = "Continue"
        },
        {
            "<leader>dC",
            function() require("dap").run_to_cursor() end,
            desc = "Run to Cursor"
        },
        {
            "<leader>dg",
            function() require("dap").goto_() end,
            desc = "Go to line (no execute)"
        },
        {
            "<leader>di",
            function() require("dap").step_into() end,
            desc = "Step Into"
        },
        {
            "<leader>dj",
            function() require("dap").down() end,
            desc = "Down"
        },
        { "<leader>dk", function() require("dap").up() end, desc = "Up" },
        {
            "<leader>dl",
            function() require("dap").run_last() end,
            desc = "Run Last"
        },
        {
            "<leader>do",
            function() require("dap").step_out() end,
            desc = "Step Out"
        },
        {
            "<leader>dO",
            function() require("dap").step_over() end,
            desc = "Step Over"
        },
        {
            "<leader>dp",
            function() require("dap").pause() end,
            desc = "Pause"
        },
        {
            "<leader>dr",
            function() require("dap").repl.toggle() end,
            desc = "Toggle REPL"
        },
        {
            "<leader>ds",
            function() require("dap").session() end,
            desc = "Session"
        },
        {
            "<leader>dt",
            function() require("dap").terminate() end,
            desc = "Terminate"
        },
        {
            "<leader>dw",
            function() require("dap.ui.widgets").hover() end,
            desc = "Widgets"
        },
    },
}
