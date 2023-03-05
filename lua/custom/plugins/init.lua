-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"vimwiki/vimwiki",
		init = function()
			vim.g.vimwiki_global_ext = 0
			vim.g.wiki_root = '~/Odin'
			vim.g.vimwiki_ext2syntax = {
				['.md'] = 'markdown',
				['.markdown'] = 'markdown',
				['.mdown'] = 'markdown'
			}
			-- vim.g.vimwiki_folding = 'expr' -- Enable/disable Vimwiki's folding (outline) functionality
			vim.g.vimwiki_listsyms =
			'✗○◐●✓' -- String of at least two symbols to show the progression of todo list items.
			vim.g.vimwiki_list = {
				{
					path = '~/Odin',
					name = 'Vault',
					diary_rel_path = 'daily-notes/',
					diary_index = 'daily-notes',
					diary_header = 'Daily Notes',
					auto_diary_index = 1,
					links_space_char = '-',
					syntax = 'markdown',
					ext = '.md',
				},
			}
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {
				check_ts = true, -- treesitter integration
				disable_filetype = { "TelescopePrompt" },
			}
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup {}
		end

	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			-- Unless you are still migrating, remove the deprecated commands from v1.x
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])



			require('neo-tree').setup {}
		end,
	}
}
