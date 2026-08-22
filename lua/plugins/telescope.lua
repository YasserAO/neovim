return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {
      defaults = {
        prompt_prefix = " > ",
        selection_caret = " > ",
        entry_prefix = "   ",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        sorting_strategy = "ascending",
        winblend = 0,
        border = true,
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      pcall(telescope.load_extension, "fzf")

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help tags" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Telescope: Recent files" })
    end,
  },
}
