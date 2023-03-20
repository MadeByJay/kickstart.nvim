return {
	'kdheepak/tabline.nvim',
	config = function()
		require('tabline').setup { enable = false }
		require('lualine').setup {
			tabline = {
				lualine_a = {},
				lualine_b = { 'branch' },
				lualine_c = { require('tabline').tabline_buffers },
				lualine_x = { require('tabline').tabline_tabs },
				lualine_y = {},
				lualine_z = {},
			},
		}
	end,
}
