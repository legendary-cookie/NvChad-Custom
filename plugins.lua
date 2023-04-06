local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins =  {
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
    "ollykel/v-vim",
  },
  {
    "EthanJWright/vs-tasks.nvim"
  },
}

return plugins
