-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Attaches to every FileType mode
require("colorizer").setup()

require("nvim-biscuits").setup({
  default_config = {
    max_length = 12,
    min_distance = 5,
    prefix_string = " 📎 ",
  },
  language_config = {
    html = {
      prefix_string = " 🌐 ",
    },
    javascript = {
      prefix_string = " ✨ ",
      max_length = 80,
    },
    python = {
      disabled = false,
    },
  },
})

require("nvim-surround").setup()
