return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"rust",
				"lua",
				"kotlin",
				"python",
				"javascript",
				"html",
				"typescript",
				"json",
				"yaml",
				"gitignore",
				"go",
				"graphql",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
