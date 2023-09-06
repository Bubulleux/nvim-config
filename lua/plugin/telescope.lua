return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find File" },
        { "<leader>pg", "<cmd>Telescope git_files<cr>", desc = "Find File (git)" },
        { "<leader>pa", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        { "<F1>", "<cmd>Telescope help_tags<cr>", desc = "Help" },
        { "<leader>c", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
        { "<leader>s", "<cmd>Telescope git_status<cr>", desc = "Git status" },
        { "<leader>j", "<cmd>Telescope jumplist<cr>", desc = "Jump list" },
        { "<leader>r", "<cmd>Telescope lsp_references<cr>", desc = "Lsp References" },
    },
}
