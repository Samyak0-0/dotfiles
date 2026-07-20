return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require 'nvim-tree.api'

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)
      -- api.map.on_attach.default(bufnr)

      vim.keymap.set('n', 'c', api.tree.change_root_to_node, opts 'Change to Current Node Directory')
      vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Toggle help')
      vim.keymap.set('n', 'y', api.fs.copy.node, opts 'Copy File')
      vim.keymap.set('n', 'gn', api.fs.copy.filename, opts 'Copy File Name')

      vim.keymap.set('n', '<CR>', function()
        local node = api.tree.get_node_under_cursor()

        api.node.open.edit()

        if node.type == 'file' then
          api.tree.close()
        end
      end, opts 'Open')
      vim.keymap.set('n', 'v', function()
        local node = api.tree.get_node_under_cursor()

        api.node.open.vertical()

        if node.type == 'file' then
          api.tree.close()
        end
      end, opts 'open in vertical split and close')
    end
    require('nvim-tree').setup {
      -- hijack_directories = {
      --   enable = false,
      -- },
      on_attach = my_on_attach,
      -- actions = {
      --   open_file = {
      --     quit_on_open = true,
      --   },
      -- },
    }
  end,
}
