# Neovim Configuration

A clean, high-performance, and modular Neovim setup built for productive coding, web development, and DevOps.

---

## ⚡ Shortcuts Cheat Sheet (By Priority)

### 📌 Key Notation Guide
- **`Space`**: The Spacebar key (Leader key)
- **`Ctrl + <key>`**: Hold down the **Control** key and press `<key>` (e.g. `Ctrl + d`, `Ctrl + r`, `Ctrl + h`)
- **`Shift + <key>`** *(Capital letter)*: Hold down **Shift** and press `<key>` (e.g. `Shift + g`, `Shift + a`, `Shift + c`)
- **`c`** *(lowercase)*: The single letter key **`c`** (Vim change command)
- **`Shift + c`** *(Capital `C`)*: Hold **Shift** and press **`c`** (Change to end of line)

---

### 1. Essential Navigation & Cursor Motions (Core Vim)
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `h` / `j` / `k` / `l` | Normal | Move cursor Left / Down / Up / Right |
| `w` / `b` | Normal | Jump forward / backward by word |
| `e` | Normal | Jump to end of current word |
| `0` *(zero)* | Normal | Jump to the very start of line |
| `Shift + 4` (`$`) | Normal | Jump to the very end of line |
| `Shift + 6` (`^`) | Normal | Jump to first non-blank character of line |
| `g` then `g` (`gg`) | Normal | Jump to the first line of the file |
| `Shift + g` (`G`) | Normal | Jump to the last line of the file |
| `:<number>` then `Enter` | Normal | Jump to specific line number (e.g. `:45` then `Enter`) |
| `Ctrl + d` | Normal | Scroll half-page down (keeps cursor centered) |
| `Ctrl + u` | Normal | Scroll half-page up (keeps cursor centered) |
| `Shift + 5` (`%`) | Normal | Jump between matching brackets `()`, `{}`, `[]` |

---

### 2. Essential Editing & Text Operations (Core Vim)
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `i` | Normal | **Insert mode** (start typing before cursor) |
| `a` | Normal | **Append** (start typing after cursor) |
| `Shift + i` (`I`) | Normal | Start typing at the beginning of the line |
| `Shift + a` (`A`) | Normal | Start typing at the end of the line |
| `o` *(lowercase)* | Normal | Open a new blank line **below** and start typing |
| `Shift + o` (`O`) | Normal | Open a new blank line **above** and start typing |
| `u` | Normal | **Undo** last change |
| `Ctrl + r` | Normal | **Redo** undone change |
| `d` then `d` (`dd`) | Normal | **Delete (cut)** current line |
| `y` then `y` (`yy`) | Normal | **Yank (copy)** current line |
| `p` *(lowercase)* | Normal | **Paste** copied text after cursor / below line |
| `Shift + p` (`P`) | Normal | **Paste** copied text before cursor / above line |
| `x` | Normal | Delete single character under cursor |
| `Shift + d` (`D`) | Normal | Delete from cursor to the end of the line |
| `Shift + c` (`C`) | Normal | Delete from cursor to end of line and enter Insert mode |
| `c` then `w` (`cw`) | Normal | Change (replace) rest of word |
| `c` then `i` then `w` (`ciw`) | Normal | Change (replace) entire word under cursor |
| `ci"` / `ci(` / `ci{` | Normal | Change text inside quotes `""`, parentheses `()`, or braces `{}` |
| `r` then `<character>` | Normal | Replace single character under cursor with `<character>` |
| `.` *(period)* | Normal | Repeat the last editing action |

---

### 3. Visual Selection & Block Editing
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `v` *(lowercase)* | Normal | Start character visual selection |
| `Shift + v` (`V`) | Normal | Start whole line visual selection |
| `Ctrl + v` | Normal | Start column / vertical block visual selection |
| `y` / `d` / `c` | Visual | Yank (copy) / Delete / Change selected text |
| `Shift + j` (`J`) | Visual | Move selected lines **down** (auto-indents) |
| `Shift + k` (`K`) | Visual | Move selected lines **up** (auto-indents) |
| `Space + p` | Visual | **Safe Paste**: Paste over selection without losing your copied clipboard |
| `Shift + .` (`>`) | Visual | Indent selected block to the right |
| `Shift + ,` (`<`) | Visual | Un-indent selected block to the left |

---

### 4. Search & Replace
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `/` then `<text>` then `Enter` | Normal | Search forward for `<text>` |
| `?` then `<text>` then `Enter` | Normal | Search backward for `<text>` |
| `n` *(lowercase)* | Normal | Jump to next search match (centered) |
| `Shift + n` (`N`) | Normal | Jump to previous search match (centered) |
| `Esc` | Normal | Clear search highlight boxes |
| `:%s/old/new/g` then `Enter` | Normal | Replace all occurrences of `old` with `new` in file |
| `:%s/old/new/gc` then `Enter` | Normal | Replace all occurrences with confirm prompt `(y/n)` |

---

### 5. File & Tab Management
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `Space + w` | Normal | **Save** file (`:w`) |
| `Space + q` | Normal | **Quit** file (`:q`) |
| `Space + e` | Normal | Open Netrw file explorer |
| `Tab` | Normal | Switch to **next** open file tab |
| `Shift + Tab` | Normal | Switch to **previous** open file tab |
| `Space + b` then `d` (`<leader>bd`) | Normal | Close current open tab |

---

### 6. Fast Search & Harpoon (Plugins)
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `Space + f` then `f` (`<leader>ff`) | Normal | **Find files** by name in project (Telescope) |
| `Space + f` then `g` (`<leader>fg`) | Normal | **Live Grep**: search text content across all files |
| `Space + f` then `b` (`<leader>fb`) | Normal | Search open file buffers |
| `Space + f` then `r` (`<leader>fr`) | Normal | Search recently opened files |
| `Space + a` | Normal | **Pin** current file to Harpoon |
| `Space + h` | Normal | Open Harpoon pinned files menu |
| `Space + 1` | Normal | Jump directly to Harpoon pinned file 1 |
| `Space + 2` | Normal | Jump directly to Harpoon pinned file 2 |
| `Space + 3` | Normal | Jump directly to Harpoon pinned file 3 |
| `Space + 4` | Normal | Jump directly to Harpoon pinned file 4 |
| `[` then `h` (`[h`) | Normal | Jump to previous Harpoon pinned file |
| `]` then `h` (`]h`) | Normal | Jump to next Harpoon pinned file |

---

### 7. Window Splits & Navigation
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `Ctrl + h` | Normal | Move cursor to window on the **Left** |
| `Ctrl + j` | Normal | Move cursor to window **Below** |
| `Ctrl + k` | Normal | Move cursor to window **Above** |
| `Ctrl + l` | Normal | Move cursor to window on the **Right** |
| `Space + s` then `v` (`<leader>sv`) | Normal | Split window **vertically** |
| `Space + s` then `h` (`<leader>sh`) | Normal | Split window **horizontally** |
| `Space + s` then `e` (`<leader>se`) | Normal | Make all split windows **equal size** |
| `Space + s` then `x` (`<leader>sx`) | Normal | Close current split window |

---

### 8. Git Integration (Gitsigns & Fugitive)
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `]` then `c` (`]c`) | Normal | Jump to **next** git change hunk |
| `[` then `c` (`[c`) | Normal | Jump to **previous** git change hunk |
| `Space + h` then `p` (`<leader>hp`) | Normal | **Preview** git diff hunk under cursor |
| `Space + h` then `s` (`<leader>hs`) | Normal/Visual | **Stage** current git hunk |
| `Space + h` then `r` (`<leader>hr`) | Normal/Visual | **Reset** current git hunk |
| `Space + t` then `b` (`<leader>tb`) | Normal | Toggle inline git blame line |
| `Space + h` then `d` (`<leader>hd`) | Normal | Diff current file against git index |
| `Space + g` then `s` (`<leader>gs`) | Normal | Open Git status panel (`:Git`) |
| `Space + g` then `p` (`<leader>gp`) | Normal | Git push (`:Git push`) |
| `Space + g` then `l` (`<leader>gl`) | Normal | Git log history (`:Git log`) |

---

### 9. Remote Clipboard & SSH Copying (OSC 52)
| Keys to Press | Mode | Action |
| :--- | :--- | :--- |
| `y` *(lowercase)* | Normal/Visual | Normal copy (automatically synced to clipboard) |
| `Space + y` | Visual | Copy highlighted selection to your local computer clipboard over SSH |
| `Space + y` then `y` (`<leader>yy`) | Normal | Copy entire line to your local computer clipboard over SSH |

---

## 📦 Requirements

- **Neovim** >= 0.10.0
- **Git**, **gcc**, **make**, **curl**, **tar**
- **ripgrep** (for project text search)

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
