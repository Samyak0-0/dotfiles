local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Search Among the git files' })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string { search = vim.fn.input 'Grep > ' }
end)
vim.keymap.set('n', '<leader>rs', ":exec 'cd' . expand('%:p:h')<CR>", { noremap = true, silent = true, desc = 'Change to current file directory' })
