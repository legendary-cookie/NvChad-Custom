-- local autocmd = vim.api.nvim_create_autocmd

vim.opt.grepprg = "rg --vimgrep --smart-case --follow"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
