-- ~/.config/lvim/lua/user/null-ls/typescript.lua

local formatters = require("lvim.lsp.null-ls.formatters")
local linters = require("lvim.lsp.null-ls.linters")

formatters.setup({
  {
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact" },
  },
})

linters.setup({
  {
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact" },
  },
})
