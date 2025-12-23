return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("colorizer").setup({
      dart = {
        mode = "foreground", -- or "background"
        names = true,        -- enables Colors.red, Colors.blue, etc
      },
    })
  end,
}

