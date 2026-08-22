return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
        ensure_installed = {
          -- Core & Configs
          "lua",
          "vim",
          "vimdoc",
          "query",
          "c",
          -- DevOps & Shell
          "bash",
          "dockerfile",
          "yaml",
          "toml",
          "json",
          "sql",
          "terraform",
          -- Web Development
          "html",
          "css",
          "javascript",
          "typescript",
          "tsx",
          -- Documentation
          "markdown",
          "markdown_inline",
        },
        auto_install = true,
      })
    end,
  },
}
