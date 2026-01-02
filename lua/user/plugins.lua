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
