return {
	'folke/tokyonight.nvim',
	priority = 1000,
	config = function()
		-- Load the colorscheme
		vim.g.tokyonight_style = 'night'
		vim.g.tokyonight_colors = { hint = 'orange', error = '#ff0000' } -- Change the "hint" color to the "orange" color, and make the "error" color bright red
		vim.cmd [[colorscheme tokyonight]]

		-- vim.g.material_style = "deep ocean"
		-- vim.cmd 'colorscheme material'

		-- vim.cmd 'colorscheme codedark'

		-- vim.o.background = 'dark'
		-- vim.cmd 'colorscheme vscode'

		-- vim.cmd[[colorscheme darkplus]]

		-- Undercurl support
		vim.cmd [[let &t_Cs = "\e[4:3m"]]
		vim.cmd [[let &t_Ce = "\e[4:0m"]]
		vim.cmd [[hi SpellBad   guisp=red    gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl]]
		vim.cmd [[hi SpellCap   guisp=yellow gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl]]
	end,
}
