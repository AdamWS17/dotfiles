-- plugins/telescope.lua:
local builtin = require('telescope.builtin')
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = function()
		return {
			{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'find files' },
			{ '<C-p>', '<cmd>Telescope git_files<cr>', desc = 'find git files' },
			{ '<leader>fs', function()
					builtin.grep_string({ search = vim.fn.input("Grep > ") })
				end,
				desc = 'fuzzy find'
			}
		}
	end,
}
