local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "stevearc/overseer.nvim",
    cmd = { "OverseerRun", "OverseerToggle" },
    config = function()
      require("overseer").setup()
    end,
  },
  {
    "Pocco81/true-zen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus" },
    config = function()
      require("true-zen").setup()
    end,
  },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require "notify"
    end,
    lazy = false,
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
        },
      }
      require("crates").reload()
    end,
  },
  {
    "renerocksai/telekasten.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    cmd = { "Telekasten" },
    config = function()
      require "custom.configs.telekasten"
    end,
  },
}

return plugins
