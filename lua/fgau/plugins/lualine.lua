return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		return {
			options = {
				icons_enabled = true,
				theme = "gruvbox",
			},
			sections = {
				lualine_a = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = {
					{
						"progress",
					},
				},
				lualine_y = {
					{
						"datetime",
						-- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
						style = "%H:%M",
					},
				},
			},
		}
	end,
}
