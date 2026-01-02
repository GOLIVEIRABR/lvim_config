local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup {
  {
    command = "google_java_format",
    filetypes = { "java" },
  },
}
