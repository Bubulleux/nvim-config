return {
	"jakemason/ouroboros.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	opts = {
		extension_preference_table = {
			c = { h = 2, hpp = 1 },
			h = { c = 2, cpp = 1 },
			cpp = { hpp = 2, h = 1 },
			hpp = { cpp = 2, c = 1 }
		},
		switch_to_open_pane_if_possible = true
	}
}
