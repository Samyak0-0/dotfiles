local builtin = require 'telescope.builtin'
local actions = require 'telescope.actions'

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Search Among the git files' })
-- vim.keymap.set('n', '<leader>ps', function()
--   builtin.grep_string { search = vim.fn.input 'Grep > ' }
-- end, { desc = 'Grep string' })
vim.keymap.set('n', '<leader>rs', ":exec 'cd' . expand('%:p:h')<CR>", { noremap = true, silent = true, desc = 'Change to current file directory' })

local function find_files_vsplit()
  builtin.find_files {
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        -- vim.cmd 'NvimTreeClose'
        actions.select_vertical(prompt_bufnr)
      end)
      return true
    end,
  }
end

local function find_files_split()
  builtin.find_files {
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        -- vim.cmd 'NvimTreeClose'
        actions.select_horizontal(prompt_bufnr)
      end)
      return true
    end,
  }
end

vim.keymap.set('n', '<leader>pv', find_files_vsplit, { desc = 'Find files (vsplit)' })
vim.keymap.set('n', '<leader>px', find_files_split, { desc = 'Find files (split)' })
