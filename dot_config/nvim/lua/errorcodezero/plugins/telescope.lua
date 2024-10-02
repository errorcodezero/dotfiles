return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require("telescope").setup {}

		local telescope = require("telescope.builtin")
		vim.keymap.set("n", "<leader>p", telescope.find_files, {})
		vim.keymap.set("n", "<C-b>", telescope.live_grep, {})
		vim.keymap.set("n", "<C-y>", telescope.buffers, {})
	end
}
