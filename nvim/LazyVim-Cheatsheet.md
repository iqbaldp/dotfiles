# LazyVim Cheatsheet

## Basic Navigation & Motions

### Cursor Movement
- `h/j/k/l` - Left/Doen/Up/Right
- `w/b/e` - Next word/Previous word/End of word
- `0/$` - Beginning/End of line
- `gg/G` - Go to first/last line
- `{/}` - Previous/Next paragraph
- `Ctrl-u/Ctrl-d` - Page up/Page down (half screen)
- `Ctrl-f/Ctrl-b` - Full page forward/backward
- `H/M/L` - Move to top/middle/bottom of screen
- `zt/zz/zb` - Center current line at top/middle/bottom

### Quick Jump
- `f{char}` - Jump to next occurrence of character
- `F{char}` - Jump to previous occurrence of character
- `t{char}` - Jump to before next occurrence
- `T{char}` - Jump to before previous occurrence
- `;/,` - Repeat last f/F/t/T forward/backward

### Custom Insert Mode Escapes
- `jj` or `jk` - Exit insert mode (custom mapping)

## LazyVim Leader Key Commands (Space)

### File Operations
- `<Space>ff` - Find files (telescope)
- `<Space>fr` - Recent files
- `<Space>fw` - Find word (grep)
- `<Space>fb` - Find buffers
- `<Space>fc` - Find config files
- `<Space>fn` - New file
- `<Space>fs` - Save file
- `<Space>fq` - Quit

### Buffer Management
- `<Space>bb` - Switch buffers
- `<Space>bd` - Delete buffer
- `<Space>bl` - Delete buffers to the left
- `<Space>br` - Delete buffers to the right
- `<Space>bo` - Delete other buffers
- `<Space>bp` - Toggle buffer pin
- `[b` / `]b` - Previous/Next buffer
- `<Space>``<backtick>` - Switch to last buffer

### Window Management
- `<C-h/j/k/l>` - Navigate between windows
- `<C-Up/Down/Left/Right>` - Resize windows
- `<Space>wd` - Delete window
- `<Space>w-` - Split window below
- `<Space>w|` - Split window right
- `<Space>ww` - Switch windows
- `<Space>wo` - Close other windows

### Code Navigation & LSP
- `gd` - Go to definition
- `gr` - Go to references
- `gD` - Go to declaration
- `gI` - Go to implementation
- `gy` - Go to type definition
- `K` - Hover documentation
- `gK` - Signature help
- `<Space>ca` - Code actions
- `<Space>cr` - Rename
- `<Space>cf` - Format
- `<Space>cd` - Line diagnostics
- `]d` / `[d` - Next/Previous diagnostic
- `]e` / `[e` - Next/Previous error

### Search & Replace
- `/` - Search forward
- `?` - Search backward
- `n/N` - Next/Previous search result
- `*/#` - Search word under cursor forward/backward
- `<Space>sr` - Replace in files
- `<Space>sR` - Replace in current buffer
- `<Space>sw` - Search current word
- `<Space>sW` - Search current WORD
- `<Space>sg` - Live grep
- `<Space>sc` - Search in command history
- `<Space>ss` - Buffer local search

### Git Integration
- `<Space>gg` - Lazygit
- `<Space>gG` - Lazygit (root dir)
- `<Space>gb` - Git blame line
- `<Space>gB` - Git browse
- `<Space>gf` - Lazygit current file history
- `<Space>gl` - Lazygit log
- `<Space>gL` - Lazygit log (root dir)
- `]h` / `[h` - Next/Previous git hunk
- `<Space>ghs` - Stage hunk
- `<Space>ghr` - Reset hunk
- `<Space>ghS` - Stage buffer
- `<Space>ghu` - Undo stage hunk
- `<Space>ghR` - Reset buffer
- `<Space>ghp` - Preview hunk
- `<Space>ghd` - Diff this
- `<Space>ghD` - Diff this ~

### File Explorer (Neo-tree)
- `<Space>e` - Toggle file explorer
- `<Space>E` - Toggle file explorer (root dir)
- `<Space>fe` - File explorer (current dir)
- `<Space>fE` - File explorer (root dir)

#### Neo-tree Navigation
- `<CR>` - Open file/folder
- `<Tab>` - Preview
- `l` - Open
- `h` - Close node
- `a` - Add file/folder
- `d` - Delete
- `r` - Rename
- `y` - Copy to clipboard
- `x` - Cut to clipboard
- `p` - Paste from clipboard
- `c` - Copy
- `m` - Move
- `q` - Close window
- `R` - Refresh
- `?` - Show help

### Terminal
- `<Space>ft` - Terminal (root dir)
- `<Space>fT` - Terminal (current dir)
- `<C-/>` - Toggle terminal
- `<C-_>` - Toggle terminal (which-key)

### Tab Management
- `<Space><tab>l` - Last tab
- `<Space><tab>f` - First tab
- `<Space><tab><tab>` - New tab
- `<Space><tab>]` - Next tab
- `<Space><tab>d` - Close tab
- `<Space><tab>[` - Previous tab

### Code Folding
- `zf` - Create fold
- `zo/zc` - Open/Close fold
- `zA` - Toggle fold recursively
- `zR/zM` - Open/Close all folds
- `zj/zk` - Move to next/previous fold

### Plugin Specific Commands

#### Copilot (if configured)
- `<Tab>` - Accept suggestion
- `<C-]>` - Dismiss suggestion
- `<C-[>` - Previous suggestion
- `<C-\>` - Next suggestion

#### CodeSnap (Screenshots)
- `:CodeSnap` - Take code screenshot
- `:CodeSnapSave` - Save code screenshot

#### Surround Operations
- `ys{motion}{char}` - Add surrounding
- `ds{char}` - Delete surrounding
- `cs{old}{new}` - Change surrounding
- Examples:
  - `ysiw"` - Surround word with quotes
  - `ds"` - Delete quotes
  - `cs"'` - Change quotes to single quotes

### Useful Lazy Commands
- `:Lazy` - Open Lazy plugin manager
- `:Lazy sync` - Update plugins
- `:Lazy clean` - Remove unused plugins
- `:Lazy check` - Check for updates
- `:LazyHealth` - Check health

### Mason (LSP/Tools Manager)
- `:Mason` - Open Mason
- `:MasonUpdate` - Update all packages
- `:MasonInstall <package>` - Install package
- `:MasonUninstall <package>` - Uninstall package

### Quick Fixes & Lists
- `<Space>xl` - Location list
- `<Space>xq` - Quickfix list
- `]q` / `[q` - Next/Previous quickfix
- `]l` / `[l` - Next/Previous location list

### Utility
- `<Space>ur` - Redraw / clear hlsearch / diff update
- `<Space>un` - Toggle line numbers
- `<Space>uw` - Toggle word wrap
- `<Space>ul` - Toggle line numbers
- `<Space>ud` - Toggle diagnostics
- `<Space>uc` - Toggle conceallevel
- `<Space>us` - Toggle spelling
- `<Space>uf` - Toggle format on save
- `<Space>uh` - Toggle inlay hints

### Debugging (if DAP configured)
- `<Space>dB` - Breakpoint condition
- `<Space>db` - Toggle breakpoint
- `<Space>dc` - Continue
- `<Space>da` - Run with args
- `<Space>dC` - Run to cursor
- `<Space>dg` - Go to line
- `<Space>di` - Step into
- `<Space>dj` - Down
- `<Space>dk` - Up
- `<Space>dl` - Run last
- `<Space>do` - Step over
- `<Space>dO` - Step out
- `<Space>dp` - Pause
- `<Space>dr` - Toggle REPL
- `<Space>ds` - Session
- `<Space>dt` - Terminate
- `<Space>du` - Toggle UI

### Go Development (if Go plugin configured)
- `<Space>gsj` - Add JSON struct tags
- `<Space>gsy` - Add YAML struct tags
- `<Space>gst` - Add struct tags
- `<Space>gsJ` - Remove JSON struct tags
- `<Space>gsY` - Remove YAML struct tags
- `<Space>gsT` - Remove struct tags

## Pro Vim Motions & Operations

### Visual Selection (Block & Text)
- `v` - Character-wise visual mode
- `V` - Line-wise visual mode (whole lines)
- `Ctrl+v` - Block visual mode (rectangular selection)
- `viw` - Select inner word
- `vaw` - Select around word (includes spaces)
- `vi"` - Select inside quotes
- `va"` - Select around quotes (includes quotes)
- `vip` - Select inner paragraph
- `vap` - Select around paragraph
- `vit` - Select inner tag (HTML/XML)
- `v$` - Select to end of line
- `v0` - Select to beginning of line
- `vgg` - Select from cursor to beginning of file
- `vG` - Select from cursor to end of file

### Copy & Paste (Yank)
- `yy` - Copy current line
- `Y` - Copy from cursor to end of line
- `yiw` - Copy inner word
- `yaw` - Copy around word
- `yi"` - Copy inside quotes
- `yip` - Copy inner paragraph
- `y$` - Copy to end of line
- `y0` - Copy to beginning of line
- `ygg` - Copy from cursor to beginning of file
- `yG` - Copy from cursor to end of file
- `"+y` - Copy to system clipboard
- `"+yy` - Copy line to system clipboard

### Paste Operations
- `p` - Paste after cursor/line
- `P` - Paste before cursor/line
- `gp` - Paste after cursor and move cursor to end
- `gP` - Paste before cursor and move cursor to end
- `"+p` - Paste from system clipboard
- `"0p` - Paste from yank register (ignores deletions)

### Line Operations
- `dd` - Delete current line
- `D` - Delete from cursor to end of line
- `C` - Change from cursor to end of line
- `S` - Change entire line (substitute)
- `cc` - Change entire line
- `o` - Insert new line below and enter insert mode
- `O` - Insert new line above and enter insert mode
- `J` - Join current line with next line
- `gJ` - Join lines without adding space

### Duplicate Lines (LazyVim)
- `<Space>ll` - Duplicate line down
- `Shift+Alt+j` - Move line down
- `Shift+Alt+k` - Move line up
- In visual mode: `Shift+Alt+j/k` - Move selected lines

### Word & Text Object Operations
- `dw` - Delete word
- `daw` - Delete around word (includes spaces)
- `diw` - Delete inner word
- `cw` - Change word
- `caw` - Change around word
- `ciw` - Change inner word
- `di"` - Delete inside quotes
- `da"` - Delete around quotes (includes quotes)
- `ci"` - Change inside quotes
- `ca"` - Change around quotes
- `dip` - Delete inner paragraph
- `dap` - Delete around paragraph
- `cip` - Change inner paragraph
- `cap` - Change around paragraph

### Advanced Delete Operations
- `x` - Delete character under cursor
- `X` - Delete character before cursor
- `dh/dl` - Delete character left/right
- `dj/dk` - Delete current line and line below/above
- `d$` - Delete to end of line
- `d0` - Delete to beginning of line
- `dgg` - Delete from cursor to beginning of file
- `dG` - Delete from cursor to end of file
- `dt{char}` - Delete until (but not including) character
- `df{char}` - Delete until (and including) character

### Block Selection Pro Tips
1. **Select rectangular block**: `Ctrl+v` → `hjkl` to expand → `y/d/c`
2. **Select multiple words**: `v` → `w` (repeat) → operation
3. **Select function/block**: `va{` or `va(` or `va[`
4. **Select entire function**: Place cursor on function name → `va{`
5. **Column editing**: `Ctrl+v` → select column → `I` (insert) or `A` (append)

### Multi-Cursor Like Operations
- `:%s/old/new/g` - Replace all occurrences in file
- `:'<,'>s/old/new/g` - Replace in visual selection
- `*` - Search word under cursor, then `cgn` to change next occurrence
- `.` - Repeat last operation (super powerful!)

### Registers (Multiple Clipboards)
- `"ay` - Copy to register 'a'
- `"ap` - Paste from register 'a'
- `"_d` - Delete to black hole register (doesn't affect clipboard)
- `:reg` - View all registers
- `"0` - Contains last yank
- `"1-9` - Contains last 9 deletions

### Text Objects & Operators
- `iw/aw` - Inner/Around word
- `is/as` - Inner/Around sentence
- `ip/ap` - Inner/Around paragraph
- `i"/a"` - Inner/Around quotes
- `i'/a'` - Inner/Around single quotes
- `i(/a(` - Inner/Around parentheses
- `i[/a[` - Inner/Around brackets
- `i{/a{` - Inner/Around braces
- `it/at` - Inner/Around tag
- `if/af` - Inner/Around function (with treesitter)

### Operators
- `d` - Delete
- `c` - Change
- `y` - Yank (copy)
- `v` - Visual select
- `=` - Indent/Format
- `>/<` - Indent right/left
- `gu/gU` - Lowercase/Uppercase
- `~` - Toggle case
- `gq` - Format/wrap text

### Pro Examples
- `daw` - Delete a word (with spaces)
- `ciw` - Change inner word
- `yap` - Yank around paragraph
- `vi"` - Visual select inner quotes
- `=ap` - Format around paragraph
- `>i{` - Indent inside braces
- `gUaw` - Uppercase around word
- `3dd` - Delete 3 lines
- `5yy` - Copy 5 lines
- `ci(` - Change inside parentheses
- `da{` - Delete around braces (including braces)
- `yi[` - Copy inside brackets
- `gqap` - Format around paragraph

## Visual Mode
- `v` - Character-wise visual mode
- `V` - Line-wise visual mode
- `<C-v>` - Block visual mode
- `o` - Switch to other end of selection
- `U/u` - Uppercase/Lowercase selection
- `~` - Toggle case

## Command Mode
- `:` - Enter command mode
- `:w` - Save
- `:q` - Quit
- `:wq` - Save and quit
- `:q!` - Quit without saving
- `:e <file>` - Edit file
- `:sp <file>` - Split horizontally and edit file
- `:vsp <file>` - Split vertically and edit file

## Pro Tips

1. **Quick File Navigation**: Use `<Space>ff` and start typing filename
2. **Buffer Switching**: Use `<Space>bb` for quick buffer switching  
3. **Search in Project**: Use `<Space>sg` for live grep across all files
4. **Git Integration**: Use `<Space>gg` to open Lazygit for full git workflow
5. **Code Actions**: Use `<Space>ca` on any LSP errors/warnings
6. **Quick Fix**: Use `]d` and `[d` to navigate through diagnostics
7. **File Tree**: Use `<Space>e` to toggle file explorer, then navigate with `hjkl`
8. **Terminal**: Use `<C-/>` for quick terminal toggle
9. **Format Code**: Use `<Space>cf` to format current buffer
10. **Documentation**: Use `K` to see hover documentation for any symbol

Remember: Most commands can be preceded by a count (e.g., `3j` moves down 3 lines, `2dw` deletes 2 words)
