return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}
