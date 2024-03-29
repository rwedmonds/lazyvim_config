-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader key to space
vim.g.mapleader = " "

local map = vim.keymap.set -- for conciseness

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

local opt = vim.opt

---------------------------------------
--             Movement              --
---------------------------------------

map("n", "I", "H") -- move to top of screen
map("n", "E", "L") -- move to bottom of screen

-- colemak keyboard layout movement keys
map("n", "<leader>n", "<C-w>h") -- move to window left
map("n", "<leader>o", "<C-w>l") -- move to window right
map("n", "<leader>e", "<C-w>j") -- move to window down
map("n", "<leader>i", "<C-w>k") -- move to window up

-- Move Lines
map("n", "<A-e>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-i>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-e>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-i>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-e>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-i>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

---------------------------------------
--        Window management          --
---------------------------------------

-- Resize window using <ctrl> arrow keys
map("n", "<C-i>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-e>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-n>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-o>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Toggle maximizing the current tab
map("n", "<Leader>z", "<Cmd>lua require('maximize').toggle()<CR>")

map("n", "<leader>s|", "<C-w>v") -- split window vertically
map("n", "<leader>s-", "<C-w>s") -- split window horizontally
map("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>") -- close current split window

map("n", "<leader>to", ":tabnew<CR>") -- open new tab
map("n", "<leader>tx", ":tabclose<CR>") -- close current tab
map("n", "<leader>tn", ":tabn<CR>") --  go to next tab
map("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

---------------------------------------
--         Floating Terminal         --
---------------------------------------
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
map("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
map("n", "<leader>ft", function()
  Util.terminal()
end, { desc = "Terminal (cwd)" })
map("n", "<c-/>", lazyterm, { desc = "Terminal (root dir)" })
map("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

---------------------------------------
--          Miscellaneous            --
---------------------------------------

-- use j and jj to enter and exit insert mode
-- map("n", "j", "i")
map("i", "jj", "<esc>")

-- write and quit
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>wa", ":wqa<CR>")
map("n", "<leader>qq", ":qa<CR>")

-- clear search highlights
map("n", "<leader>hh", ":nohl<CR>")

-- delete single character without copying into register
map("n", "x", '"_x')

-- indent lines
map("v", "<", "<gv")
map("v", ">", ">gv")

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>") -- increment
map("n", "<leader>-", "<C-x>") -- decrement

-- toggle line wrapping
map("n", "<leader>lw", function()
  Util.toggle("wrap")
end, { desc = "Toggle Line Wrapping" })

---------------------------------------
--          Plugin keybinds          --
---------------------------------------
-- cellular automaton
map("n", "<leader>fml", ":CellularAutomaton make_it_rain<CR>")

-- lazygit
map("n", "<leader>lg", ":LazyGit<CR>")

-- multicursors
map("n", "<leader>m", ":MCstart<CR>")

-- neotree
map("n", "<leader>tt", ":Neotree toggle<CR>")

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- toggle Twilight
map("n", "<leader>tw", ":Twilight<CR>")
