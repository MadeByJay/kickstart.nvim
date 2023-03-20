return {
	{
		'jose-elias-alvarez/null-ls.nvim',
		version = '*',
		dependencies = { 'jose-elias-alvarez/typescript.nvim' },
		config = function()
			local null_ls = require 'null-ls'

			-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
			local formatting = null_ls.builtins.formatting
			-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
			local diagnostics = null_ls.builtins.diagnostics
			local completion = null_ls.builtins.completion
			local codeactions = null_ls.builtins.code_actions

			-- https://github.com/prettier-solidity/prettier-plugin-solidity
			null_ls.setup {
				debug = false,
				sources = {
					codeactions.eslint,
					codeactions.gitsigns,
					-- completion.luasnip,
					completion.tags,
					completion.spell.with {
						filetypes = {
							'vimwiki',
							'markdown',
							'markdown.mdx',
						},
					},
					diagnostics.flake8,
					diagnostics.markdownlint.with {
						extra_filetypes = { 'vimwiki' },
					},
					diagnostics.codespell,
					-- diagnostics.eslint,
					formatting.prettier.with {
						filetypes = {
							'javascript',
							'javascriptreact',
							'typescript',
							'typescriptreact',
							'vue',
							'css',
							'scss',
							'less',
							'html',
							'json',
							'jsonc',
							'yaml',
							'markdown',
							'markdown.mdx',
							'graphql',
							'handlebars',
						},
						extra_filetypes = { 'toml', 'vimwiki' },
						extra_args = { '--single-quote', '--jsx-single-quote' },
						-- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
					},
					-- formatting.black.with { extra_args = { "--fast" } },
					formatting.blue.with { extra_args = { '--fast' } },
					formatting.stylua,
					formatting.google_java_format,
					require 'typescript.extensions.null-ls.code-actions',
				},
			}
		end,
	},
}
