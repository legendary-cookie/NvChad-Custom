---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-w>"] = {
      ":bd!<CR>",
      "close buffer",
    },
  },
}

M.overseer = {
  n = {
    ["<Leader>ta"] = {
      ":OverseerRun<CR>",
      "run task",
    },
    ["<Leader>tt"] = {
      ":OverseerToggle<CR>",
      "toggle overseer output",
    },
  },
}

M.glow = {
  n = {
    ["<Leader>gg"] = {
      ":Glow<CR>",
      "preview markdown",
    },
  },
}

M.zen = {
  n = {
    ["<Leader>tza"] = {
      ":TZAtaraxis<CR>",
      "ataraxis mode",
    },
    ["<Leader>tzm"] = {
      ":TZMinimalist<CR>",
      "minimalist mode",
    },

    ["<Leader>tzn"] = {
      ":TZNarrow<CR>",
      "narrow mode",
    },
    ["<Leader>tzf"] = {
      ":TZFocus<CR>",
      "focus mode",
    },
  },
}

M.notify = {
  n = {
    ["<Leader>un"] = {
      function()
        require("notify").dismiss { silent = true, pending = true }
      end,
      "dismiss all notifications",
    },
  },
}

M.crates = {
  n = {
    ["<Leader>rcv"] = {
      function()
        if vim.fn.expand "%:t" == "Cargo.toml" and require("crates").popup_available() then
          require("crates").show_versions_popup()
        end
      end,
      "show crate versions",
    },
    ["<Leader>rcf"] = {
      function()
        if vim.fn.expand "%:t" == "Cargo.toml" and require("crates").popup_available() then
          require("crates").show_features_popup()
        end
      end,
      "show crate features",
    },
    ["<Leader>rce"] = {
      function()
        if vim.fn.expand "%:t" == "Cargo.toml" and require("crates").popup_available() then
          require("crates").focus_popup()
        end
      end,
      "focus crate popup",
    },
    ["<Leader>rcu"] = {
      function()
        require("crates").upgrade_crate()
      end,
      "upgrade crate",
    },
    ["<Leader>rcU"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "upgrade all crates",
    },
  },
}

return M
