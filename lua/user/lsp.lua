-- Angular
require("lvim.lsp.manager").setup("angularls")

-- Java (usar nvim-jdtls manualmente)
vim.list_extend(
  lvim.lsp.automatic_configuration.skipped_servers,
  { "jdtls" }
)
