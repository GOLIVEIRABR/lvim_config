-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- ~/.config/lvim/config.lua

require("user.keymaps")
require("user.plugins")
require("user.options")
require("user.lsp")
require("user.treesitter")

-- TypeScript stack
require("user.dap.java")
require("user.dap.javascript")
require("user.dap.typescript")
require("user.null-ls.java")
require("user.null-ls.typescript")
