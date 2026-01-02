local dap = require("dap")

dap.adapters.java = function(callback, config)
  callback({
    type = 'server',
    host = '0.0.0.0', -- ou o IP da máquina remota
    port = '5005'
  })
end

dap.configurations.java = {
  {
    type = "java",
    request = "attach",
    name = "Debug (Remote)",
    hostName = "0.0.0.0", -- ou o IP da máquina remota
    port = 5005,
  },
}
