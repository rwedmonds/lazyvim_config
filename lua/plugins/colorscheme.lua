return {
  -- -- add dracula
  -- { "Mofiqul/dracula.nvim" },
  --
  -- -- Configure LazyVim to load dracula
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "dracula",
  --   },
  -- },
  -- add catppuccin mocha
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
