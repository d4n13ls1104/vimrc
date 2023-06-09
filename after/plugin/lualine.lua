require("lualine").setup {
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {
			{
				'datetime',
				-- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
				style = "%a, %B %d | %H:%Mam"
			}
		}
	}
}
