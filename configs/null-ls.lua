local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Webdev
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "css" } },
  -- Clang-format
  b.formatting.clang_format,
  -- Rust
  b.formatting.rustfmt,
  -- Lua
  b.formatting.stylua,
  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = false,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
            filter = function(fmtclient)
              return fmtclient.name == "null-ls"
            end,
          }
        end,
      })
    end
  end,
}
