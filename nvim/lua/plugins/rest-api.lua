return {
  'mistweaverco/kulala.nvim',
  keys = {
    { '<leader>Rs', desc = 'Send request' },
    { '<leader>Ra', desc = 'Send all requests' },
    { '<leader>Rb', desc = 'Open scratchpad' },
  },
  ft = { 'http', 'rest' },
  opts = {
    global_keymaps = true,
    global_keymaps_prefix = '<leader>R',
    kulala_keymaps_prefix = '',
  },
}

-- return {
--   'mistweaverco/kulala.nvim',
--   keys = {
--     { '<leader>Rs', desc = 'Send request' },
--     { '<leader>Ra', desc = 'Send all requests' },
--     { '<leader>Rb', desc = 'Open scratchpad' },
--   },
--   ft = { 'http', 'rest' },
--   opts = {
--     global_keymaps = false,
--     kulala_keymaps_prefix = '',
--   },
--   config = function(_, opts)
--     require('kulala').setup(opts)
--     vim.api.nvim_create_autocmd('FileType', {
--       pattern = { 'http', 'rest' },
--       callback = function(ev)
--         local k = require 'kulala'
--         local map = function(lhs, rhs, desc)
--           vim.keymap.set('n', lhs, rhs, { buffer = ev.buf, desc = desc })
--         end
--         map('<leader>Rs', k.run, 'Send request')
--         map('<leader>Ra', k.run_all, 'Send all requests')
--         map('<leader>Rb', k.scratchpad, 'Open scratchpad')
--       end,
--     })
--   end,
-- }
