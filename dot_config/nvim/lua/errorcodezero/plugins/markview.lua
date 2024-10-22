return {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    ft = "markdown",

	config = function ()
		require("markview").setup({
			latex = { enable = true }
		})
	end,

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    }
}
