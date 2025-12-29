vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>r', '<C-r>')
vim.keymap.set('n', '<leader>w', '<C-w>')
vim.keymap.set('n', '<leader>Q', vim.cmd.q, { desc = 'Quit' })
vim.keymap.set('n', '<leader>t', vim.cmd.NvimTreeToggle, { desc = 'Nvim Tree Toggle' })
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })

vim.keymap.set('n', '<leader>c', 'gcc', { remap = true, desc = 'comment line' })
vim.keymap.set('v', '<leader>c', 'gcc', { remap = true, desc = 'comment highlighted section' })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>dd', '"_dd', { desc = 'delete without saving' })
vim.keymap.set('v', '<leader>d', '"_d', { desc = 'delete without saving' })

-- Toggle line wrapping with <leader>w
vim.keymap.set('n', '<leader>o', ':set wrap!<CR>', { desc = 'Toggle word wrap', silent = true })

-- Optional: You can also toggle the 'linebreak' and 'showbreak' options for better control
-- 'linebreak' makes sure wrapping happens at words, not in the middle of them
-- 'showbreak' displays a character at the start of a wrapped line
vim.keymap.set('n', '<leader>L', ':set wrap! linebreak! showbreak=+++<CR>', { desc = 'Toggle word wrap with linebreak' })

vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = true,
  },
}

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostic float' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'prev diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'next diagnostic' })
