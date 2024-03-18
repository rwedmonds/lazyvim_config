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
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- import any extras modules here
    { "kdheepak/lazygit.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
    } },
    -- nvim-biscuits
    { "code-biscuits/nvim-biscuits" },
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
```

### options.lua

Added config for winbar
# lazyvim_config
