return {
  {
    "folke/noice.nvim",
    opts = {
      presets = { lsp_doc_border = true },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = { typescript = { preferences = { importModuleSpecifier = "non-relative" } } },
        },
      },
    },
  },
}
