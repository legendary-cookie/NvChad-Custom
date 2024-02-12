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
  "ruby_ls",
  "als",
  "zls",
  "serve_d",
  "dockerls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local caps = capabilities
caps.offsetEncoding = "utf-8"

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = caps,
}
