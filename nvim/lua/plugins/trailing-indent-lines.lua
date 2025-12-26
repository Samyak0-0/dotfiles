return {
  'echasnovski/mini.indentscope',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    symbol = '╎',
    options = { try_as_border = true },
  },
  init = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'help',
        'alpha',
        'dashboard',
        'neo-tree',
        'Trouble',
        'trouble',
        'lazy',
        'mason',
        'notify',
        'toggleterm',
        'lazyterm',
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
  config = function(_, opts)
    require('mini.indentscope').setup(opts)

    -- Set red color for the indent scope line
    vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg = '#ff0000' })
  end,
}
