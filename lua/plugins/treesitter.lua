return {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    keys = {
        { "<c-space>", desc = "Increment selection" },
        { "<bs>",      desc = "Decrement selection", mode = "x" },
    },
    ---@type TSConfig
    opts = {
        ensure_installed = { "c", "cpp", "python", "lua", "vim", "html",
            "css", "javascript", "json", "latex", "markdown", },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        -- List of parsers to ignore installing (for "all")
        ignore_install = { "gitcommit" },

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
            -- `false` will disable the whole extension
            enable = true,
            additional_vim_regex_highlighting = false,
        },

        indent = { enable = true },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<bs>",
            },
        },
    },
    ---@param opts TSConfig
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
