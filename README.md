# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

![alt text](<nvim_screenshot.png>)

## My Changes

### alpha.lua

Added **alpha.lua** for custom logo at home screen (pictured above)

### colorscheme.lua

Added **colorscheme.lua** to enable Dracula colorscheme from [Mofiqul/dracula](#https://github.com/Mofiqul/dracula.nvim)

### disabled.lua

Added **disabled.lua** to disable the nvim-notify plugin because it makes NeoVim unusable

### keymaps.lua

This whole file is customized to work:

1. With the Colemak keyboard layout
2. With my preferences

### lazy.lua

Loaded plugins in the "extra modules section"

```sh
    -- import any extras modules here
    { "kdheepak/lazygit.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
    } },
    -- cellular automaton
    { "eandrju/cellular-automaton.nvim" },

    { "folke/twilight.nvim" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- import/override with your plugins
    { import = "plugins" },
  },
```

### options.lua

Added config for winbar
# lazyvim_config
