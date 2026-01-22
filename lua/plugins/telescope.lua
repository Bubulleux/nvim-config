return {
    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find File" },
        { "<leader>pg", "<cmd>Telescope git_files<cr>", desc = "Find File (git)" },

        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        { "<leader><F1>", "<cmd>Telescope help_tags<cr>", desc = "Help" },
		--
        { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
        { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git status" },
        { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git branchs" },

        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Dignostic" },

        { "<leader>j", "<cmd>Telescope jumplist<cr>", desc = "Jump list" },
        { "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Jump list" },
        -- { "<leader>r", "<cmd>Telescope lsp_references<cr>", desc = "Lsp References" },
    },
}
}
