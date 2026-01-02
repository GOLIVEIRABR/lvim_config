-- Buffer Navigation
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"

-- DEBUG KEYBINDS
lvim.keys.normal_mode["<F5>"] = "<cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F10>"] = "<cmd>lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F11>"] = "<cmd>lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<F12>"] = "<cmd>lua require'dap'.step_out()<CR>"
