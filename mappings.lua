---@type MappingsTable
local M = {}

M.trouble = {
  n = {
    ["tt"] = { "<cmd>TroubleToggle<cr>" },
    ["tw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>" },
    ["td"] = { "<cmd>TroubleToggle document_diagnostics<cr>" },
    ["tq"] = { "<cmd>TroubleToggle quickfix<cr>" },
    ["tl"] = { "<cmd>TroubleToggle loclist<cr>" },
    ["tr"] = {
      "<cmd>TroubleToggle lsp_references<cr>",
    },
  },
}

M.dap = {
  n = {
    ["<Leader>sc"] = { "<cmd>lua require('dap').continue()<cr>", "dap continue" },
    ["<Leader>sso"] = { "<cmd>lua require('dap').step_over()<cr>", "dap step over" },
    ["<Leader>ssi"] = { "<cmd>lua require('dap').step_into()<cr>", "dap step into" },
    ["<Leader>sst"] = { "<cmd>lua require('dap').step_out()<cr>", "dap step out" },
    ["<Leader>sbb"] = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "dap breakpoint" },
    ["<Leader>sbl"] = {
      "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>",
      "dap breakpoint logpoint",
    },
    ["<Leader>sr"] = { "<cmd>lua require('dap').repl.open()<cr>", "dap repl" },
    ["<Leader>sl"] = { "<cmd>lua require('dap').run_last()<cr>", "dap run last" },
    ["<Leader>sh"] = { "<cmd>lua require('dap.ui.widgets').hover()<cr>", "dap hover" },
    ["<Leader>sp"] = { "<cmd>lua require('dap.ui.widgets').preview()<cr>", "dap preview" },
    ["<Leader>swf"] = {
      "<cmd>lua local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.frames)<cr>",
      "dap frames",
    },
    ["<Leader>sws"] = {
      "<cmd>lua local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.scopes)<cr>",
      "dap scopes",
    },
  },
}

M.leap = {
  n = {
    ["s"] = {
      "<Plug>(leap-forward)",
      "start leap forwards",
    },
    ["S"] = {
      "<Plug>(leap-backward)",
      "start leap backwards",
    },
  },
}

-- M.leap.x = M.leap.n
-- M.leap.o = M.leap.n

M.neogit = {
  n = {
    ["<Leader>ko"] = {
      "<cmd> Neogit <CR>",
      "open neogit ui",
    },
  },
}

M.overseer = {
  n = {
    ["<Leader>ta"] = {
      "<cmd> OverseerRun <CR>",
      "run overseer task",
    },
    ["<Leader>tt"] = {
      "<cmd> OverseerToggle <CR>",
      "toggle overseer output",
    },
  },
}

M.glow = {
  n = {
    ["<Leader>gg"] = {
      "<cmd> Glow <CR>",
      "preview markdown",
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

vim.keymap.set("i", "jj", "<ESC>", { silent = true })

return M
