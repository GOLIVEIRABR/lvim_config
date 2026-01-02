local dap = require("dap")

if not dap.adapters["pwa-node"] then
  dap.adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
      command = "node",
      args = {
        os.getenv("HOME") .. "/.local/share/nvim/js-debug/src/dapDebugServer.ts",
        "${port}"
      },
    },
  }
end

dap.configurations.javascript = {
  {
    name = "Anexar ao processo Node",
    type = "pwa-node",
    request = "attach",
    processId = require 'dap.utils'.pick_process,
    port = 9229,
    restart = false,
    cwd = vim.fn.getcwd(),
  },
}
