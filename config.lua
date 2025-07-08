-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"

-- DEBUG KEYBINDS
lvim.keys.normal_mode["<F5>"] = "<cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F10>"] = "<cmd>lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F11>"] = "<cmd>lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<F12>"] = "<cmd>lua require'dap'.step_out()<CR>"

lvim.plugins = {
  "mfussenegger/nvim-jdtls",
  "nvim-treesitter/nvim-treesitter-angular",
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
  },
}

lvim.colorscheme = "tokyonight-night"

lvim.format_on_save.enabled = true

require("lvim.lsp.manager").setup("angularls")

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
lvim.builtin.treesitter.ensure_installed = {
  "java",
}
