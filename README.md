# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

![alt text](<data/nvim_screenshot.png>)

## Table of Contents

[Installation](#installation)

[My Changes](#my-changes)

- [alpha.lua](#alphalua)
- [colorscheme.lua](#colorschemelua)
- [disabled.lua](#disabledlua)
- [keymaps.lua](#keymapslua)
- [lazy.lua](#lazy.lua)
- [options.lua](#options.lua)

[Keymaps and Keyboard Shortcuts](#keymaps-and-keyboard-shortcuts)

- [Editing](#editing)
- [Movement](#movement)
- [Window Management](#window-management)
- [Plugin Keybinds](#plugin-keybinds)
- [Miscellaneous](#miscellaneous)

[A Few NeoVim Tips and Tricks](#a-few-neovim-tips-and-tricks)

- [Block Insert](#block-insert)
- [Block Replacement](#block-replacement)
- [Global Search and Replace](#global-search-and-replace)
- [Using mini.surround](#using-minisurround)

## Installation

This is just [LazyVim](https://www.lazyvim.org/) with [my changes](#my-changes) to suit my tastes and work with the [Colemak](https://colemak.com/) keyboard layout. Follow the installation instructions at lazyvim.org and, if Colemak is your chosen layout, use the keymaps [here](https://github.com/rwedmonds/lazyvim_config/blob/main/lua/config/keymaps.lua). 

## My Changes

### alpha.lua

Added **alpha.lua** for custom logo at home screen (pictured above)

### colorscheme.lua

Added **colorscheme.lua** to enable different themes

### disabled.lua

Added **disabled.lua** to disable the nvim-notify plugin because it makes NeoVim unusable

### keymaps.lua

This whole file is customized to work:

1. With the [Colemak](https://colemak.com) keyboard layout
2. With my preferences

### lazy.lua

Loaded plugins in the "extra modules section"

```sh
   -- import any extras modules here
    { "kdheepak/lazygit.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
      } 
    },
    -- nvim-biscuits
    { "code-biscuits/nvim-biscuits" },
    {
      "MeanderingProgrammer/markdown.nvim",
      name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      config = function()
        require("render-markdown").setup({})
      end,
    },
    -- nvim-surround
    {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup()
      end,
    },
    -- cellular automaton
    { "eandrju/cellular-automaton.nvim" },
    -- colorizer
    { "norcalli/nvim-colorizer.lua" },
    { "folke/twilight.nvim" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- import/override with your plugins
    { import = "plugins" },

```

### options.lua

added config for winbar

## Keymaps and Keyboard Shortcuts

!!!note The leader key is `space`

### Editing

| Mode | Keymap | Definition |
| - | - | - |
| Normal | `di` (`"`, `'`, `(`, `{`, `[`, `\|`) | Delete everything between the indicated characters |
| Normal | `yi` (`"`, `'`, `(`, `{`, `[`, `\|`) | Copy (yank) everything between the indicated characters |
| Normal | `dG` | Delete to the end of the document |
| Normal | `dgg` | Delete to the beginning of the document |
| Normal | `dw` | Delete to the end of the current word |
| Insert | **CTRL**-`w` | Delete the previous word (or to the beginning of the current word) |
| Insert | **CTRL**-`u` | Delete to the beginning of the line |

### Movement

| Mode | Keymap | Definition |
| - | - | - |
| Normal | `I` | Move to top of screen |
| Normal | `E` | Move to bottom of screen |
| Normal | `M` | Move to middle of screen |
| Normal | **CTRL**-`u` | Move up half a screen |
| Normal | **CTRL**-`d` | Move down half a screen |
| Normal | \<leader\> `n` | Move to window left |
| Normal | \<leader\> `o` | Move to window right |
| Normal | \<leader\> `e` | Move to window down |
| Normal | \<leader\> `i` | Move to window up |
| Normal/Insert/Visual | **Opt**-`e` | move line down |
| Normal/Insert/Visual | **Opt**-`i` | move line up |

### Window Management

| Mode | Keymap | Definition |
| - | - | - |
| Normal | **CTRL**-`i` | Increase window height
| Normal | **CTRL**-`e` | Decrease window height
| Normal | **CTRL**-`o` | Increase window width
| Normal | **CTRL**-`n` | Decrease window width
| Normal | \<leader\> `s\`| | Split window vertically
| Normal | \<leader\> `s-` | Split window horizontally
| Normal | \<leader\> `se` | Make split windows equal width & height
| Normal | \<leader\> `sx` | Close current split window
| Normal | \<leader\> `to` | Open new tab
| Normal | \<leader\> `tn` | Close current tab
| Normal | \<leader\> `tx` | Go to next tab
| Normal | \<leader\> `tp` | Go to previous tab

### Plugin Keybinds

| Mode | Plugin | Keybind | Definition |
| - | - | - | - |
| Normal | Cellular Automation | \<leader\> `fml` | Make it rain |
| Normal | Neotree | \<leader\> `tt` | Toggle Neotree |
| Normal | Telescope | \<leader\> `ff` | Find files |
| Normal | Telescope | \<leader\> `fs` | Find string (grep) in current working directory as you type |
| Normal | Telescope | \<leader\> `fc` | Find string under cursor in curreng working directory |
| Normal | Telescope | \<leader\> `fb` | List open buffers in current neovim instance |
| Normal | Telescope | \<leader\> `fh` | List available help tags |
| Normal | Telescope | \<leader\> `gc` | List all git commits (use <cr> to checkout) |
| Normal | Telescope | \<leader\> `gfc` | List git commits for current file/buffer (use <cr> to checkout) |
| Normal | Telescope | \<leader\> `gb` | List git branches (use <cr> to checkout) |
| Normal | Telescope | \<leader\> `gs` | List current changes per file with diff preview |
| Normal | Twilight | \<leader\> `tw` | Toggle Twilight |

### Miscellaneous

| Mode | Keymap | Definition |
| - | - | - |
| Insert | `jj` | ESC (Exit insert mode) |
| Normal | \<leader\> `w` | Write |
| Normal | \<leader\> `q` | Quit |
| Normal | \<leader\> `wa` | Write all and quit |
| Normal | \<leader\> `qq` | Quit all |
| Normal | \<leader\> `hh` | Clear search highlights |
| Normal | `x` | Delete the character under the cursor without copying int register
| Visual | `<` | Decrease indent |
| Visual | `>` | Increase indent |
| Normal | \<leader\> `+` | Increment number |
| Normal | \<leader\> `-` | Decrement number |
| Insert | **CTRL**-`o` | Enter a Normal mode command while in insert mode |
| Normal | `gg` `=` `G` | Properly indent entire file |

## A Few NeoVim Tips and Tricks

### Block Insert

1. Put cursor where yoy want text (Text will go AFTER the cursor)
2. **CTRL**-`v` to enter block select mode
3. Select block using movement keys
4. **SHIFT**-`a` to enter insert mode
5. Type text you want (It will appear only on first line)
6. Hit Esc (Text will appear on all other lines)

![block insert](https://github.com/rwedmonds/lazyvim_config/blob/main/data/block_insert.gif)

### Block Replacement

  1. Put cursor over first letter you want to replace
2. **CTRL**-`v` to enter block select mode
3. Select block using movement keys
4. `c` followed by text you want to replace with
5. **Esc** to exit and replace in entire selection

![block replacement](https://github.com/rwedmonds/lazyvim_config/blob/main/data/block_replacement.gif)

### Global Search and Replace 

- Replace `foo` with `bar` across the entire file

  `:%s/foo/bar/g`

### Using [ mini.surround ](https://github.com/echasnovski/mini.surround)

Actions (all of them are dot-repeatable out of the box and respect `v:count` for searching surrounding) with configurable keymappings:

- Add surrounding with `sa` (in visual mode or on motion).
- Delete surrounding with `sd`.
- Replace surrounding with `sr`.
- Find surrounding with `sf` or `sF` (move cursor right or left).
- Highlight surrounding with `sh`.
- Change number of neighbor lines with `sn` (see |MiniSurround-algorithm|).

Surrounding is identified by a single character as both "input" (in `delete` and `replace` start, `find`, and `highlight`) and "output" (in `add` and `replace` end):

- f - function call (tring of alphanumeric symbols or '_' or '.' followed by balanced '()'). In "input" finds function call, in "output" prompts user to enter function name.
- 't' - tag. In "input" finds tag with same identifier, in "output" prompts user to enter tag name.
- All symbols in brackets '()', '[]', '{}', '<>". In "input' represents balanced brackets (open - with whitespace pad, close - without), in "output" - left and right parts of brackets.
- '?' - interactive. Prompts user to enter left and right parts.
- All other alphanumeric, punctuation, or space characters represent surrounding with identical left and right parts.

Configurable search methods to find not only covering but possibly next, previous, or nearest surrounding. See more in help for `MiniSurround.config`.

All actions involving finding surrounding (delete, replace, find, highlight) can be used with suffix that changes search method to find previous/last. See more in help for `MiniSurround.config`.

