return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
	config = function()
		require("telescope").setup {
			extensions = {
				file_browser = {
					theme = "ivy",
					hijack_netrw = true,
				},
			},
		}

		require("telescope").load_extension "file_browser"


		local telescope = require("telescope.builtin")
		vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR> path=%:p:h select_buffer=true<CR>")
		vim.keymap.set("n", "<leader>p", telescope.find_files, {})
		vim.keymap.set("n", "<C-b>", telescope.live_grep, {})
		vim.keymap.set("n", "<C-y>", telescope.buffers, {})
	end
}
