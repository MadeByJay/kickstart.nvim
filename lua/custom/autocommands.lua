-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'qf', 'help', 'man', 'lspinfo', 'spectre_panel', 'lir' },
	callback = function()
		vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]]
	end,
})

-- Fixes Autocomment
-- vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"
vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
	callback = function()
		vim.cmd 'set formatoptions-=c formatoptions-=r formatoptions-=o'
	end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'gitcommit', 'markdown', 'vimwiki' },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})
