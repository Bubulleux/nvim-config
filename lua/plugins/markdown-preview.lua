return {
    "iamcco/markdown-preview.nvim",
    build = function (_)
        vim.fn["mkdp#util#install"]()
    end,
}
