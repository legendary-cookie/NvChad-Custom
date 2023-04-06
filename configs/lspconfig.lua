-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "rust_analyzer",
  "pylsp",
  "gopls",
  "tsserver",
  "ansiblels",
  "vls",
  "ruby_ls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = function ()
    local caps = capabilities
    caps.offsetEncoding = "utf-8"
    return caps
  end,
}
