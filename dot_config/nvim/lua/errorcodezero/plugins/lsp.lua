return {
	"williamboman/mason.nvim",
	dependencies = {
		-- LSP
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",

		-- DAP
		'jay-babu/mason-nvim-dap.nvim',
		'mfussenegger/nvim-dap',
		'rcarriga/nvim-dap-ui',
		'mfussenegger/nvim-dap',
		'nvim-neotest/nvim-nio',

		-- Linting
		'mfussenegger/nvim-lint',
		'rshkarin/mason-nvim-lint',
	},
	init = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "ts_ls", "tailwindcss", "jdtls" }
		})
		require("mason-nvim-dap").setup({
			ensure_installed = { "python", "chrome", "js" },
			automatic_installation = true
		})

		local on_attach = function(_, _)
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
			-- vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})

			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, {})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

			vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
			vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {})
		end

		local on_attach_format = function(_, _)
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})

			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, {})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

			vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
			vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {})
		end

		-- Config for each LSP
		require("lspconfig").lua_ls.setup {
			on_attach = on_attach_format,
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			}
		}
		require("lspconfig").ts_ls.setup {
			on_attach = on_attach,
		}
		require("lspconfig").tailwindcss.setup {
			on_attach = on_attach,
		}
		require("lspconfig").jdtls.setup {
			on_attach = on_attach_format,
		}
	end
}
