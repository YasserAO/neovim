# Neovim Configuration

A clean, high-performance, and modular Neovim setup built for productive coding, web development, and DevOps.

---

## ⚡ Shortcuts Cheat Sheet (By Priority)

The `<leader>` key is **`Spacebar`**.

### 1. Essential Navigation & Motions (Core Vim)
| Key | Mode | Description |
| :--- | :--- | :--- |
| `h` / `j` / `k` / `l` | Normal | Move cursor left / down / up / right |
| `w` / `b` | Normal | Jump forward / backward by word |
| `e` | Normal | Jump to end of word |
| `0` / `$` | Normal | Jump to start / end of line |
| `^` | Normal | Jump to first non-blank character of line |
| `gg` / `G` | Normal | Jump to first / last line of file |
| `:<number>` | Normal | Jump to specific line number (e.g. `:45`) |
| `<C-d>` / `<C-u>` | Normal | Scroll half-page down / up (keeps cursor centered) |
| `%` | Normal | Jump to matching bracket `()`, `{}`, `[]` |

---

### 2. Essential Editing & Operations (Core Vim)
| Key | Mode | Description |
| :--- | :--- | :--- |
| `i` / `a` | Normal | Insert before cursor / append after cursor |
| `I` / `A` | Normal | Insert at start of line / append at end of line |
| `o` / `O` | Normal | Open new line below / above and enter Insert mode |
| `u` / `<C-r>` | Normal | Undo / Redo |
| `dd` / `yy` | Normal | Delete (cut) line / Yank (copy) line |
| `p` / `P` | Normal | Paste after cursor / paste before cursor |
| `x` | Normal | Delete single character under cursor |
| `D` / `C` | Normal | Delete to end of line / Change to end of line |
| `cw` / `ciw` | Normal | Change word / Change inner word |
| `ci"` / `ci(` / `ci{` | Normal | Change text inside quotes `""`, parentheses `()`, braces `{}` |
| `r<char>` | Normal | Replace single character under cursor |
| `.` | Normal | Repeat last edit command |

---

### 3. Visual Selection & Block Editing
| Key | Mode | Description |
| :--- | :--- | :--- |
| `v` / `V` | Normal | Start character-wise visual / line-wise visual selection |
| `<C-v>` | Normal | Start block/column visual selection |
| `y` / `d` / `c` | Visual | Yank / Delete / Change selected text |
| `J` / `K` | Visual | Move selected block down / up (auto-indents) |
| `<leader>p` | Visual | Paste over selection without losing your copied clipboard |
| `>` / `<` | Visual | Indent / Un-indent selected block (repeatable) |

---

### 4. Search & Replace
| Key | Mode | Description |
| :--- | :--- | :--- |
| `/pattern` | Normal | Search forward for pattern |
| `?pattern` | Normal | Search backward for pattern |
| `n` / `N` | Normal | Next / previous match (kept centered) |
| `<Esc>` | Normal | Clear active search highlights |
| `:%s/old/new/g` | Normal | Replace all occurrences in whole file |
| `:%s/old/new/gc` | Normal | Replace all occurrences with confirmation prompt |

---

### 5. File & Buffer Management
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<leader>w` | Normal | Save file (`:w`) |
| `<leader>q` | Normal | Quit buffer / window (`:q`) |
| `<leader>e` | Normal | Open Netrw file explorer |
| `<Tab>` | Normal | Switch to next open buffer tab |
| `<S-Tab>` | Normal | Switch to previous open buffer tab |
| `<leader>bd` | Normal | Close current buffer tab |

---

### 6. Fast Project Search & Harpoon
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<leader>ff` | Normal | Fuzzy find files in project (Telescope) |
| `<leader>fg` | Normal | Live Grep search across all files (Telescope) |
| `<leader>fb` | Normal | List and search open buffers |
| `<leader>fr` | Normal | List recent files |
| `<leader>a` | Normal | Pin current file to Harpoon |
| `<leader>h` | Normal | Open Harpoon quick menu |
| `<leader>1` - `<leader>4` | Normal | Jump directly to Harpoon pinned file 1, 2, 3, or 4 |
| `[h` / `]h` | Normal | Navigate previous / next Harpoon file |

---

### 7. Window Splits & Navigation
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<C-h>` / `<C-j>` | Normal | Move focus to window split on Left / Below |
| `<C-k>` / `<C-l>` | Normal | Move focus to window split Above / on Right |
| `<leader>sv` | Normal | Split window vertically |
| `<leader>sh` | Normal | Split window horizontally |
| `<leader>se` | Normal | Balance split window sizes equally |
| `<leader>sx` | Normal | Close current split window |

---

### 8. Git Integration
| Key | Mode | Description |
| :--- | :--- | :--- |
| `]c` / `[c` | Normal | Jump to next / previous git change hunk |
| `<leader>hp` | Normal | Preview git hunk under cursor |
| `<leader>hs` / `<leader>hr` | Normal/Visual | Stage / Reset git hunk |
| `<leader>tb` | Normal | Toggle inline git blame line |
| `<leader>hd` | Normal | Diff current file against git index |
| `<leader>gs` | Normal | Open Fugitive Git status window (`:Git`) |
| `<leader>gp` / `<leader>gl` | Normal | Git push / Git log |

---

### 9. SSH / Remote Clipboard (OSC 52)
| Key | Mode | Description |
| :--- | :--- | :--- |
| `y` | Visual/Normal | Yank to system clipboard |
| `<leader>y` | Visual | Copy selection directly to local client clipboard over SSH |
| `<leader>yy` | Normal | Copy current line directly to local client clipboard over SSH |

---

## 📦 Requirements

- **Neovim** >= 0.10.0
- **Git**, **gcc**, **make**, **curl**, **tar**
- **ripgrep** (for project search)

### Quick Install Dependencies:
- **Ubuntu / Debian:**
  ```bash
  sudo apt update && sudo apt install -y neovim git build-essential gcc make ripgrep curl tar
  ```
- **macOS:**
  ```bash
  brew install neovim git gcc make ripgrep
  ```
- **Arch Linux:**
  ```bash
  sudo pacman -S neovim git base-devel gcc make ripgrep
  ```

---

## 🚀 Installation

```bash
git clone https://github.com/YasserAO/neovim.git ~/.config/nvim
nvim
```
Plugins and syntax parsers will automatically install on first launch.

---

## 🛠️ Included Languages & Parsers

Syntax highlighting is preconfigured for:
- **DevOps:** Dockerfile, Bash, YAML, TOML, SQL, Terraform
- **Web:** HTML, CSS, JavaScript, TypeScript, TSX, JSON
- **Core:** Lua, Vim, Vimdoc, C, Markdown

---

## 🧩 Plugins Overview

| Plugin | Purpose |
| :--- | :--- |
| **`lazy.nvim`** | High-performance plugin manager |
| **`catppuccin`** | Clean, natural high-contrast colorscheme |
| **`lualine.nvim`** | Clean statusline showing mode, git, and diagnostics |
| **`bufferline.nvim`** | Top tabline for open files |
| **`telescope.nvim`** | Fast fuzzy finder and project text search |
| **`harpoon2`** | Fast file pinning and instant jumping |
| **`nvim-treesitter`** | Tree-sitter syntax parsing and highlighting |
| **`nvim-colorizer.lua`** | Real-time color badges for CSS and TailwindCSS |
| **`nvim-ts-autotag`** | Auto-close and rename HTML/JSX tags |
| **`gitsigns.nvim`** | Inline gutter diff signs and hunk staging |
| **`vim-fugitive`** | Git interface (`:Git`) |
| **`nvim-osc52`** | Remote clipboard synchronization over SSH |
| **`nvim-autopairs`** | Auto-closing brackets and quotes |
| **`which-key.nvim`** | Popup helper showing available keymaps |
