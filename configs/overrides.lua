local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "cpp",
    "rust",
    "toml",
    "v",
    "zig",
    "terraform",
    "sql",
    "python",
    "kotlin",
    "go",
    "cmake",
    "bash"
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  }
}

M.mason = {
  ensure_installed = {
    "clangd",
    "deno",
    "prettier",
    "rust-analyzer",
    "stylua",
    "lua-language-server",
    "vls",
    "typescript-language-server",
    "css-lsp",
    "html-lsp",
    "gopls",
    "protolint"
  }
}

M.nvimtree = {
  git = {
    enable = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
