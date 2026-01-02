-- ~/.config/lvim/lua/user/dap/typescript.lua

local dap = require("dap")

dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8123,
  executable = {
    command = os.getenv("HOME") .. "/.local/share/lvim/mason/bin/js-debug-adapter",
  },
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

dap.configurations.typescriptreact = dap.configurations.typescript
