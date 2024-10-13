return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			"███████╗██████╗░██████╗░░█████╗░██████╗░░█████╗░░█████╗░██████╗░███████╗░█████╗░",
			"██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗",
			"█████╗░░██████╔╝██████╔╝██║░░██║██████╔╝██║░░╚═╝██║░░██║██║░░██║█████╗░░██║░░██║",
			"██╔══╝░░██╔══██╗██╔══██╗██║░░██║██╔══██╗██║░░██╗██║░░██║██║░░██║██╔══╝░░██║░░██║",
			"███████╗██║░░██║██║░░██║╚█████╔╝██║░░██║╚█████╔╝╚█████╔╝██████╔╝███████╗╚█████╔╝",
			"╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝░╚════╝░░╚════╝░╚═════╝░╚══════╝░╚════╝░",
		}
		dashboard.section.buttons.val = {
			dashboard.button("1", "󰈔 Open File", ":Telescope find_files<enter>"),
			dashboard.button("2", "󰨭 Live Grep", ":Telescope live_grep<enter>"),
			dashboard.button("3", "󱊈 Plugins", ":Lazy<enter>"),
			dashboard.button("4", "󰒋 LSP Servers", ":Mason<enter>"),
			dashboard.button("5", "󰅖 Quit", ":q!<enter>"),
		}
		require("alpha").setup(dashboard.config)
	end,
}
