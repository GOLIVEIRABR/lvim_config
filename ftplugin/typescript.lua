local dap = require("dap")

dap.adapters["pwa-node"] = {
  type = "server",
  port = 8123,
  command = os.getenv("HOME") .. "/.local/share/lvim/mason/bin/js-debug-adapter"
}

dap.configurations.typescript = {
  {
    type = "pwa-node",
    request = "attach",
    name = "Attach to NestJS",
    port = 9229,
    address = "127.0.0.1",
    cwd = vim.fn.getcwd(),
    localRoot = vim.fn.getcwd(),
    remoteRoot = vim.fn.getcwd(),
    protocol = "inspector",
    skipFiles = { "<node_internals>/**" },
  },
}

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "eslint_d", filetypes = { "typescript", "typescriptreact" } },
}

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint_d", filetypes = { "typescript", "typescriptreact" } },
}
