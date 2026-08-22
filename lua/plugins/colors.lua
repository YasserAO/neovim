return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte", -- "latte" (soothing light), "frappe" (soft muted dark), "macchiato", "mocha"
      transparent_background = false,
      no_italic = true, -- Disable italics to prevent font distortion
      no_bold = true,   -- Disable bold to keep text crisp and clean
      no_underline = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {
        treesitter = true,
        gitsigns = true,
        telescope = { enabled = true },
        harpoon = true,
        which_key = true,
        indent_blankline = { enabled = true },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-latte")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "day", -- "day" (light), "moon" (soft dark), "storm", "night"
      transparent = false,
      styles = {
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
        globalstatus = true,
        icons_enabled = true,
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" }, -- Minimal clean dividers (no broken font boxes)
        disabled_filetypes = {
          statusline = { "help", "lazy" },
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          {
            "diff",
            symbols = { added = "+", modified = "~", removed = "-" },
          },
        },
        lualine_c = {
          {
            "filename",
            path = 1,
            symbols = { modified = " *", readonly = " [RO]", unnamed = "[No Name]" },
          },
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
          },
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        separator_style = "thin", -- Clean minimal line separator
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = false,
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = false, -- Disable heavy scope highlighting for a cleaner look
      },
      exclude = {
        filetypes = { "help", "lazy", "mason", "notify" },
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
