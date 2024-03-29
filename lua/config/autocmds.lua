-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Attaches to every FileType mode
require("colorizer").setup()

require("mini.surround").setup()

require("maximize").setup()

require("multicursors").setup{
    DEBUG_MODE = false,
    create_commands = true, -- create Multicursor user commands
    updatetime = 50, -- selections get updated if this many milliseconds nothing is typed in the insert mode see :help updatetime
    nowait = true, -- see :help :map-nowait
    mode_keys = {
        append = "a",
        change = "c",
        extend = "e",
        insert = "i",
    }, -- set bindings to start these modes
    -- see :help hydra-config.hint
    hint_config = {
        border = "rounded",
        position = "bottom-right",
    },
    generate_hints = {
        normal = true,
        insert = true,
        extend = true,
        config = {
            column_count = 1,
            max_hint_length = 50,
        },
    },
}
