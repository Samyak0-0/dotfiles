vim.opt.guicursor = ''

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append '@-@'

vim.opt.updatetime = 50

--vim.opt.colorcolumn = '80'

vim.g.mapleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Set the statusline to display file info, then position/percentage info on the right
-- vim.opt.statusline = '%F%=%l/%L %P'

-- vim.opt.wildmode = 'noselect:longest,full'
vim.opt.wildmode = 'noselect:full,full'

vim.opt.title = true
vim.opt.titlestring = 'neovim'

require('gruvbox').setup {
  overrides = {
    SignColumn = { bg = '#282828' },
    FoldColumn = { bg = '#282828' },

    -- Diagnostic signs
    diagnosticsignerror = { bg = '#282828', fg = '#fb4934' },
    diagnosticsignwarn = { bg = '#282828', fg = '#fabd2f' },
    diagnosticsigninfo = { bg = '#282828', fg = '#83a598' },
    diagnosticsignhint = { bg = '#282828', fg = '#8ec07c' },

    -- Disable cursor-word highlighting
    CursorWord = { bg = 'NONE' },
    LspReferenceText = { bg = 'NONE' },
    LspReferenceRead = { bg = 'NONE' },
    LspReferenceWrite = { bg = 'NONE' },

    YankHighlight = { bg = '#d3869b', fg = '#282828', bold = true }, -- Aqua
  },
}
vim.cmd.colorscheme 'gruvbox'

vim.opt.winborder = 'rounded'
