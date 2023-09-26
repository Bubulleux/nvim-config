return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_grammar_vlty = { lt_command = "languagetool" }
        vim.opt.spelllang = "fr"
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "./.aux/",
            out_dit = "./out/",
            options = {
                "-verbose",
                "-pvc",
                "-pdf",
                "~/.config/nvim/latex/template.cls",
            },
        }
    end,
}
