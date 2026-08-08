return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- dashboard.section.header.opts = {
    --   position = 'center',
    -- }
    dashboard.config.layout = {
      { type = 'padding', val = 0 },
      dashboard.section.header,
      { type = 'padding', val = 1 },
      dashboard.section.buttons,
    }
    dashboard.section.header.val = {
      '                               ....                                         ',
      "                            ,;;'''';;,                    ,;;;;,            ",
      "                  ,        ;;'      `;;,               .,;;;'   ;           ",
      "               ,;;;       ;;          `;;,';;;,.     ,%;;'     '            ",
      "             ,;;,;;       ;;         ,;`;;;, `;::.  %%;'                    ",
      "            ;;;,;;;       `'       ,;;; ;;,;;, `::,%%;'                     ",
      "            ;;;,;;;,          .,%%%%%'% ;;;;,;;   %;;;                      ",
      "  ,%,.      `;;;,;;;,    .,%%%%%%%%%'%; ;;;;;,;;  %;;;                      ",
      " ;,`%%%%%%%%%%`;;,;;'%%%%%%%%%%%%%'%%'  `;;;;;,;, %;;;                      ",
      " ;;;,`%%%%%%%%%%%,; ..`%%%%%%%%;'%%%'    `;;;;,;; %%;;                      ",
      "  `;;;;;,`%%%%%,;;/, .. `''''',%%%%%      `;;;;;; %%;;,                     ",
      '     `;;;;;;;,;;/////,.    ,;%%%%%%%        `;;;;,`%%;;                     ',
      "            ;;;/%%%%,%///;;;';%%%%%%,          `;;;%%;;,                    ",
      "           ;;;/%%%,%%%%%/;;;';;'%%%%%,             `%%;;                    ",
      "          .;;/%%,%%%%%//;;'  ;;;'%%%%%,             %%;;,                   ",
      "          ;;//%,%%%%//;;;'   `;;;;'%%%%             `%;;;                   ",
      "          ;;//%,%//;;;;'      `;;;;'%%%              %;;;,                  ",
      "          `;;//,/;;;'          `;;;'%%'              `%;;;                  ",
      "            `;;;;'               `;'%'                `;;;;                 ",
      "                                   '      .,,,.        `;;;;                ",
      '                                       ,;;;;;;;;;;,     `;;;;               ',
      "                                      ;;;'    ;;;,;;,    `;;;;              ",
      '                                      ;;;      ;;;;,;;.   `;;;;             ',
      '                                       `;;      ;;;;;,;;   ;;;;             ',
      "                                         `'      `;;;;,;;  ;;;;             ",
      '                                                    `;;,;, ;;;;             ',
      '                                                       ;;, ;;;;             ',
      "                                                         ';;;;;             ",
      '                                                          ;;;;;             ',
    }

    dashboard.section.buttons.val = {
      -- dashboard.button('e', '  > New File', '<cmd>ene<CR>'),
      -- dashboard.button('SPC ee', '  > File explorer', '<cmd>NvimTreeToggle<CR>'),
      -- dashboard.button('SPC ff', '󰱼  > Find File', '<cmd>Telescope find_files<CR>'),
      -- dashboard.button('SPC pr', '  > Find Recent', '<cmd>Telescope oldfiles<CR>'),
      -- dashboard.button('q', '  > Quit', '<cmd>qa<CR>'),
    }

    vim.api.nvim_set_hl(0, 'AlphaHeader', {
      fg = '#7aa2f7',
    })

    dashboard.section.header.opts.hl = 'AlphaHeader'

    alpha.setup(dashboard.opts)

    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
