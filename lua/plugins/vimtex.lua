return {
    "lervag/vimtex",
    lazy = false,
    config = function()
       vim.g.vimtex_view_method = "zathura"
       vim.g.vimtex_grammar_vlty = { lt_command = "languagetool"}
       vim.opt.spelllang = "fr"
  end,
}
