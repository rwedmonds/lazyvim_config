# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

![alt text](<nvim_screenshot.png>)

## My Changes

### alpha.lua

Added **alpha.lua** for custom logo at home screen (pictured above)

### colorscheme.lua

Added **colorscheme.lua** to enable different themes

### disabled.lua

Added **disabled.lua** to disable the nvim-notify plugin because it makes NeoVim unusable

### keymaps.lua

This whole file is customized to work:

1. With the Colemak keyboard layout
2. With my preferences

### lazy.lua

Loaded plugins in the "extra modules section"

```sh
-- add lazyvim and import its plugins
{ "lazyvim/lazyvim", import = "lazyvim.plugins" },

-- import any extras modules here
{ "kdheepak/lazygit.nvim", dependencies = {
"nvim-lua/plenary.nvim",
} },
-- nvim-biscuits
{ "code-biscuits/nvim-biscuits" },
-- nvim-surround
{
nihbdsrtqa cyuv``
"kylechui/nvim-surround",
version = | use for stability; omit to use `main` branch for the latest features
event = "verylazy",
config = function()
require("nvim-surround |.setup()
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
```

### options.lua

added config for winbar

## keymaps and keyboard shortcuts

!!!note The leader key is `space`

### Editing

| Mode | Keymap | Definition |
| - | - | - |
| Normal | `di` (", ', (, {, [, \|) | Delete everything between the indicated characters |
| Normal | `yi` (", ', (, {, [, \|) | Copy (yank) everything between the indicated characters |
| Normal | `dG` | Delete to the end of the document |
| Normal | `dgg` | Delete to the beginning of the document |
| Normal | `dw` | Delete to the end of the current word |
| Insert | CTRL-w | Delete the previous word (or to the beginning of the current word) |
| Insert | CTRL-u | Delete to the beginning of the line |

### Movement

| Mode | Keymap | Definition |
| - | - | - |
| Normal | I | Move to top of screen |
| Normal | E | Move to bottom of screen |
| Normal | M | Move to middle of screen | 
| Normal | CTRL-u | Move up half a screen |
| Normal | CTRL-d | Move down half a screen |
| Normal | \<leader\> n | Move to window left |
| Normal | \<leader\> o | Move to window right |
| Normal | \<leader\> e | Move to window down |
| Normal | \<leader\> i | Move to window up |
| Normal/Insert/Visual | Opt-e | move line down |
| Normal/Insert/Visual | Opt-i | move line up |

### Window Management

| Mode | Keymap | Definition |
| - | - | - |
| Normal | CTRL-i | Increase window height
| Normal | CTRL-e | Decrease window height
| Normal | CTRL-o | Increase window width
| Normal | CTRL-n | Decrease window width
| Normal | \<leader\> s\| | Split window vertically
| Normal | \<leader\> s- | Split window horizontally
| Normal | \<leader\> se | Make split windows equal width & height
| Normal | \<leader\> sx | Close current split window
| Normal | \<leader\> to | Open new tab
| Normal | \<leader\> tn | Close current tab
| Normal | \<leader\> tx | Go to next tab
| Normal | \<leader\> tp | Go to previous tab

### Plugin Keybinds

| Mode | Plugin | Keybind | Definition |
| - | - | - | - |
| Normal | Cellular Automation | \<leader\> fml | Make it rain |
| Normal | Neotree | \<leader\> tt | Toggle Neotree |
| Normal | Telescope | \<leader\> ff | Find files |
| Normal | Telescope | \<leader\> fs | Find string (grep) in current working directory as you type | 
| Normal | Telescope | \<leader\> fc | Find string under cursor in curreng working directory |
| Normal | Telescope | \<leader\> fb | List open buffers in current neovim instance |
| Normal | Telescope | \<leader\> fh | List available help tags |
| Normal | Telescope | \<leader\> gc | List all git commits (use <cr> to checkout) |
| Normal | Telescope | \<leader\> gfc | List git commits for current file/buffer (use <cr> to checkout) |
| Normal | Telescope | \<leader\> gb | List git branches (use <cr> to checkout) |
| Normal | Telescope | \<leader\> gs | List current changes per file with diff preview |
| Normal | Twilight | \<leader\> tw | Toggle Twilight |

### Miscellaneous

| Mode | Keymap | Definition |
| - | - | - |
| Insert | jj | ESC (Exit insert mode) |
| Normal | \<leader\> w | Write |
| Normal | \<leader\> q | Quit |
| Normal | \<leader\> wa | Write all and quit |
| Normal | \<leader\> qq | Quit all |
| Normal | \<leader\> hh | Clear search highlights |
| Normal | x | Delete the character under the cursor without copying int register
| Visual | < | Decrease indent |
| Visual | > | Increase indent |
| Normal | \<leader\> + | Increment number |
| Normal | \<leader\> - | Decrement number |
| Insert | CTRL-o | Enter a Normal mode command while in insert mode |
| Normal | `gg` `=` `G` | Properly indent entire file |

### Block Insert

1. Put cursor where yoy want text (Text will go AFTER the cursor)
2. CTRL-v to enter block select mode
3. Select block using movement keys 
4. SHIFT-a to enter insert mode
5. Type text you want (It will appear only on first line)
6. Hit Esc (Text will appear on all other lines)

### Block Replacement

1. Put cursor over first letter you want to replace 
2. CTRL-`v` to enter block select mode
3. Select block using movement keys
4. `c` followed by text you want to replace with 
5. Esc to exit and replace in entire selection

![block replacement](https://github.com/redmonds/lazyvim_config/data/block_replacement.gif)

