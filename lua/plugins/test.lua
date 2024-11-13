return {
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-jest",
    },
    opts = {
      adapters = {
        ["neotest-jest"] = {},
        ["neotest-vitest"] = {},
      },
    },
  },
}
