return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  opts = {
    ensure_installed = {
      "vimdoc",
      "javascript",
      "typescript",
      "c",
      "lua",
      "rust",
      "jsdoc",
      "bash",
      "go",
      "dart",
      "markdown"
    },

    sync_install = false,
    auto_install = true,

    indent = {
      enable = true,
    },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
  },
}

