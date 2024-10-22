return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "astro", "eslint", "pylsp", "jdtls", "denols", "svelte", "tailwindcss" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local disable_format = function(client)
				client.server_capabilities.documentFormattingProvider = false
			end

			local lspconfig = require("lspconfig")

			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				on_attach = disable_format,
				root_dir = lspconfig.util.root_pattern("package.json"),
				single_file_support = false,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.astro.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities,
				on_attach = disable_format,
			})
			lspconfig.svelte.setup({
				capabilities = capabilities,
				on_attach = disable_format,
			})
			lspconfig.denols.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = disable_format,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = { "stylua", "prettierd", "black" },
				handlers = {},
			})
			local null_ls = require("null-ls")
			null_ls.setup({})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	-- TODO: Add DAP support
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	"jay-babu/mason-nvim-dap.nvim",
	-- 	"mfussenegger/nvim-dap",
	-- 	dependencies = {
	-- 		"nvim-neotest/nvim-nio",
	-- 	},
	--
	-- 	config = function()
	-- 		require("mason-nvim-dap").setup({
	-- 			ensure_installed = { "chrome", "codelldb" },
	-- 			automatic_installation = true,
	-- 			handlers = {},
	-- 		})
	-- 		local dap = require("dap")
	-- 		local dapui = require("dapui")
	-- 		dap.listeners.before.attach.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.launch.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.event_terminated.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		dap.listeners.before.event_exited.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
	-- 		vim.keymap.set("n", "<leader>dc", dap.continue, {})
	-- 	end,
	-- },
}
