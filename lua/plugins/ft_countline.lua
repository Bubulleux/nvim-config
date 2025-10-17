return {
  "FtVim/ft_count_lines.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("ft_count_lines").setup({ 
		keybinding = "<leader>n" 
	})

  end
}
