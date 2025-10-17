return {
    "nvim-treesitter/nvim-treesitter",
 	build = ":TSUpdate",
	lazy = false;
    cmd = { "TSUpdateSync" },
    keys = {
        { "<c-s>", desc = "Increment selection" },
        { "<bs>",      desc = "Decrement selection", mode = "x" },
    },
	opts_extend = { "ensure_installed" },
	
    ---@type TSConfig
    opts = {
        ensure_installed = { "c", "cpp", "python", "lua", "vim", "html",
            "css", "javascript", "json", "latex", "markdown", "markdown_inline"},

		folds = { enable = true },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        -- List of parsers to ignore installing (for "all")
        ignore_install = { "gitcommit", "latex" },

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
            -- `false` will disable the whole extension
            enable = true,
            additional_vim_regex_highlighting = false,
            disable = { "latex" },
        },

        indent = { enable = true },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-S>",
                node_incremental = "<C-S>",
                scope_incremental = false,
                node_decremental = "<bs>",
            },
        },
    },
	 config = function(_, opts)
    	local TS = require("nvim-treesitter.configs")
		TS.setup(opts)
	end,
}
