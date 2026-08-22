return {
  {
    "ojroques/nvim-osc52",
    config = function()
      local osc52 = require("osc52")
      osc52.setup({
        max_length = 0,
        silent = false,
        trim = false,
      })

      local function copy(lines, _)
        osc52.copy(table.concat(lines, "\n"))
      end

      local function paste()
        return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
      end

      -- Auto-hook into system clipboard when connected via SSH
      if vim.env.SSH_TTY or vim.env.SSH_CLIENT or vim.env.SSH_CONNECTION then
        vim.g.clipboard = {
          name = "osc52",
          copy = { ["+"] = copy, ["*"] = copy },
          paste = { ["+"] = paste, ["*"] = paste },
        }
      end

      -- Keymaps to explicitly yank over SSH to local clipboard
      vim.keymap.set("n", "<leader>y", function()
        return osc52.copy_operator()
      end, { expr = true, desc = "Clipboard: Copy via OSC52" })

      vim.keymap.set("n", "<leader>yy", "<leader>y_", { remap = true, desc = "Clipboard: Copy line via OSC52" })

      vim.keymap.set("v", "<leader>y", function()
        osc52.copy_visual()
      end, { desc = "Clipboard: Copy selection via OSC52" })
    end,
  },
}
