<div align="center">

# ✨ Modern & Modular Neovim Configuration ✨

An elegant, blazing-fast, and beginner-friendly **Neovim** configuration built from scratch using Lua and [lazy.nvim](https://github.com/folke/lazy.nvim).

![Neovim](https://img.shields.io/badge/Neovim-0.10+-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20WSL-blue?style=for-the-badge)

</div>

---

## 🌟 Highlights

- ⚡ **Lightning Fast:** Modular lazy-loading architecture powered by `lazy.nvim`.
- 🎨 **Stunning Visuals:** Deep `tokyonight-night` colorscheme with native transparency, `lualine` statusline, `bufferline` tabs, and indentation guides.
- 🗂️ **Harpoon 2:** Instant switching between your most-used files by ThePrimeagen.
- 🔍 **Fuzzy Finding:** High-speed file search and live regex grep powered by `telescope.nvim` and `fzf-native`.
- 🌳 **Advanced Syntax Highlighting:** Pre-configured `nvim-treesitter` parsers for Web Dev, DevOps, and Shell scripting.
- 🌈 **Web Dev & Tailwind:** Real-time CSS & Tailwind CSS color badges + auto-closing/renaming HTML/JSX tags.
- 🌿 **Git Superpowers:** Inline gutter diff signs, hunk preview/staging with `gitsigns.nvim`, and full git control with `vim-fugitive`.
- 📋 **Remote SSH Clipboard:** Seamless copy/pasting across SSH to your local machine via ANSI OSC 52 escape sequences.
- 💡 **Discoverable:** Press `<leader>` (Spacebar) to open `which-key` interactive popup guide.
- 🛠️ **Quality of Life:** Auto-closing pairs `() [] {} "" ''`, persistent undo history across restarts, centered scrolling, and intuitive window splits.

---

## 📦 Requirements & Prerequisites

Before installing, ensure you have the following installed on your system:

### 1. Neovim (v0.10.0 or newer)
- **Ubuntu / Debian:**
  ```bash
  sudo apt update && sudo apt install -y neovim
  ```
- **macOS:**
  ```bash
  brew install neovim
  ```
- **Arch Linux:**
  ```bash
  sudo pacman -S neovim
  ```

### 2. Build Tools & Search Utilities
Required to compile Tree-sitter parsers and enable high-speed file searches:
- **Ubuntu / Debian:**
  ```bash
  sudo apt install -y git build-essential gcc make ripgrep curl tar
  ```
- **macOS:**
  ```bash
  brew install git gcc make ripgrep
  ```
- **Arch Linux:**
  ```bash
  sudo pacman -S git base-devel gcc make ripgrep
  ```

### 3. Nerd Font *(Recommended for icons)*
To display file icons, git badges, and status symbols, install any [Nerd Font](https://www.nerdfonts.com/) (e.g. *JetBrains Mono Nerd Font*, *FiraCode Nerd Font*, or *Hack Nerd Font*) on your terminal.

---

## 🚀 Step-by-Step Installation

### Step 1: Backup your old Neovim configuration (if any)
```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Step 2: Clone this repository
```bash
git clone https://github.com/YasserAO/neovim.git ~/.config/nvim
```

### Step 3: Launch Neovim
```bash
nvim
```
> **Note on First Launch:** `lazy.nvim` will automatically bootstrap itself and install all plugins and Tree-sitter parsers. Once finished, restart Neovim (`:q` and reopen) and you're ready to code!

---

## 📁 File Structure

```text
~/.config/nvim/
├── init.lua                   # Main entry point (loads options, keybinds, lazy)
├── lazy-lock.json             # Pinned plugin commit hashes for reproducibility
├── README.md                  # Documentation and guide
└── lua/
    ├── config/
    │   ├── keybinds.lua       # Custom keyboard shortcuts & leader mappings
    │   ├── lazy.lua           # Lazy.nvim package manager setup
    │   └── options.lua        # Editor options (tabs, numbers, clipboard, undo)
    └── plugins/
        ├── clipboard.lua      # OSC 52 SSH clipboard bridging (nvim-osc52)
        ├── colors.lua         # TokyoNight theme, Lualine, Bufferline, Indent-Blankline
        ├── git.lua            # Git signs & Fugitive integration
        ├── harpoon.lua        # Harpoon 2 file pinning (ThePrimeagen)
        ├── telescope.lua      # Fuzzy finder & live grep config
        ├── treesitter.lua     # Syntax highlighting & language parsers
        ├── ui_helpers.lua     # Autopairs & Which-Key helper popup
        └── webdev.lua         # Colorizer (Tailwind & CSS colors) & Tag autotag
```

---

## ⌨️ Keybindings Cheat Sheet

The `<leader>` key is set to **`Spacebar`**.

### 🧭 1. General & File Management
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `<leader>w` | Normal | Save current file (`:w`) |
| `<leader>q` | Normal | Quit current buffer (`:q`) |
| `<leader>e` or `<leader>pv` | Normal | Open Netrw file explorer |
| `<Esc>` | Normal | Clear active search highlights |
| `<Tab>` | Normal | Jump to next open buffer tab |
| `<S-Tab>` | Normal | Jump to previous open buffer tab |
| `<leader>bd` | Normal | Close current buffer |
| `J` / `K` | Visual | Move selected lines down / up (auto-indented) |
| `<leader>p` | Visual | Paste without overwriting clipboard register |
| `<C-d>` / `<C-u>` | Normal | Scroll down / up half-page (kept centered) |

---

### 🔍 2. Fuzzy Finding (`Telescope`)
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `<leader>ff` | Normal | Find files in project |
| `<leader>fg` | Normal | Live Grep (search string in entire project) |
| `<leader>fb` | Normal | Search open buffers |
| `<leader>fh` | Normal | Search Neovim help tags |
| `<leader>fr` | Normal | Search recent files |

---

### 🗂️ 3. Harpoon 2 (Quick File Pinning)
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `<leader>a` | Normal | Add current file to Harpoon |
| `<leader>h` or `<C-e>` | Normal | Toggle Harpoon quick menu |
| `<leader>1` | Normal | Jump to Harpoon file 1 |
| `<leader>2` | Normal | Jump to Harpoon file 2 |
| `<leader>3` | Normal | Jump to Harpoon file 3 |
| `<leader>4` | Normal | Jump to Harpoon file 4 |
| `[h` / `]h` | Normal | Previous / Next Harpoon file |

---

### 🌿 4. Git Integration (`Gitsigns` & `Fugitive`)
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `]c` / `[c` | Normal | Jump to next / previous git change hunk |
| `<leader>hp` | Normal | Preview git hunk under cursor |
| `<leader>hs` | Normal/Visual | Stage hunk / selected lines |
| `<leader>hr` | Normal/Visual | Reset hunk / selected lines |
| `<leader>tb` | Normal | Toggle inline git blame line |
| `<leader>hd` | Normal | Diff current file against git index |
| `<leader>gs` | Normal | Open Git status window (`:Git`) |
| `<leader>gp` | Normal | Git push (`:Git push`) |
| `<leader>gl` | Normal | Git log (`:Git log`) |

---

### 🪟 5. Window Splits & Navigation
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `<C-h>` | Normal | Navigate to split on left |
| `<C-j>` | Normal | Navigate to split below |
| `<C-k>` | Normal | Navigate to split above |
| `<C-l>` | Normal | Navigate to split on right |
| `<leader>sv` | Normal | Split window vertically |
| `<leader>sh` | Normal | Split window horizontally |
| `<leader>se` | Normal | Make split windows equal size |
| `<leader>sx` | Normal | Close current split window |

---

### 📋 6. SSH & Remote Clipboard (OSC 52)
When connected over SSH, yanking copies text directly to your local computer's clipboard!
| Shortcut | Mode | Description |
| :--- | :--- | :--- |
| `y` | Visual/Normal | Standard yank (auto-synced to clipboard) |
| `<leader>y` | Visual | Explicitly copy selection to local clipboard via OSC 52 |
| `<leader>yy` | Normal | Explicitly copy line to local clipboard via OSC 52 |

---

### ❓ 7. Keymap Cheat Sheet (Which-Key)
- Simply press `<leader>` (Spacebar) and wait a moment: an interactive popup will display all available key combinations and their descriptions!
- Press `<leader>?` to view buffer-local keymaps.

---

## 🛠️ Included Languages & Parsers

Tree-sitter is preconfigured for out-of-the-box syntax highlighting:
- **DevOps & Infra:** Dockerfile, Bash, YAML, TOML, SQL, Terraform
- **Web Development:** HTML, CSS, JavaScript, TypeScript, TSX, JSON
- **Core & Docs:** Lua, Vim, Vimdoc, C, Markdown, Markdown Inline

To add any other language, open Neovim and run:
```vim
:TSInstall <language>
```

---

## 🧩 Adding Your Own Plugins

Thanks to `lazy.nvim`'s modular design, adding a new plugin is as easy as creating a new `.lua` file inside `lua/plugins/`:

Example: Create `lua/plugins/mini.lua`:
```lua
return {
  {
    "echasnovski/mini.surround",
    version = false,
    opts = {},
  },
}
```
Restart Neovim or run `:Lazy sync` and the plugin will be automatically loaded!

---

## 📄 License
MIT License. Feel free to fork, modify, and share!
