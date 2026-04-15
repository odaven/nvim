return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsgo = {
          settings = { typescript = { preferences = { importModuleSpecifier = "non-relative" } } },
        },
      },
    },
  },
}
