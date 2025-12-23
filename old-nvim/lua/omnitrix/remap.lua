vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Toggle line wrapping with <leader>w
vim.keymap.set('n', '<leader>w', ':set wrap!<CR>', { desc = 'Toggle word wrap' })

-- Optional: You can also toggle the 'linebreak' and 'showbreak' options for better control
-- 'linebreak' makes sure wrapping happens at words, not in the middle of them
-- 'showbreak' displays a character at the start of a wrapped line
vim.keymap.set('n', '<leader>L', ':set wrap! linebreak! showbreak=+++<CR>', { desc = 'Toggle word wrap with linebreak' })
                
