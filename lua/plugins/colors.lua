return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato", -- "macchiato" (high-contrast, natural dark), "mocha", "frappe"
      transparent_background = false,
      no_italic = true,
      no_bold = true,
      no_underline = true,
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
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay1 },
          CursorLineNr = { fg = colors.peach, bold = false },
          Visual = { bg = colors.surface2 },
          Search = { bg = colors.yellow, fg = colors.base, bold = false },
          IncSearch = { bg = colors.peach, fg = colors.base, bold = false },
          FloatBorder = { fg = colors.blue, bg = colors.mantle },
          NormalFloat = { bg = colors.mantle },
          VertSplit = { fg = colors.surface1 },
          WinSeparator = { fg = colors.surface1 },
        }
      end,
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
      vim.cmd.colorscheme("catppuccin-macchiato")

      -- Enforce uniform, un-distorted font rendering globally
      local function strip_distortions()
        local highlights = vim.api.nvim_get_hl(0, {})
        for name, hl in pairs(highlights) do
          if hl.bold or hl.italic then
            hl.bold = false
            hl.italic = false
            vim.api.nvim_set_hl(0, name, hl)
          end
        end
      end
      strip_distortions()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = strip_distortions })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        theme = "catppuccin",
        globalstatus = true,
        icons_enabled = true,
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
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
        separator_style = "thin",
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
        enabled = false,
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
