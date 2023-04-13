local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
