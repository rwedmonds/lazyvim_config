local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -------------------------------------------------------
    --        import any extras modules here             --
    -------------------------------------------------------

    -- LazyGit
    { "kdheepak/lazygit.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
    } },
    -- Multicursors
    {
      "smoka7/multicursors.nvim",
      event = "VeryLazy",
      dependencies = {
          'smoka7/hydra.nvim',
      },
      opts = {},
      cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
      keys = {
              {
                  mode = { 'v', 'n' },
                  '<Leader>m',
                  '<cmd>MCstart<cr>',
                  desc = 'Create a selection for selected text or word under the cursor',
              },
          },
  },
    -- Markdown Preview
    {
      "MeanderingProgrammer/markdown.nvim",
      name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      config = function()
        require("render-markdown").setup({})
      end,
    },
    -- Mazximize
    { "declancm/maximize.nvim" },
    -- mini-surround
    { "echasnovski/mini.surround", version = "*" },
    -- cellular automaton
    { "eandrju/cellular-automaton.nvim" },
    -- colorizer
    { "norcalli/nvim-colorizer.lua" },
    { "folke/twilight.nvim" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
