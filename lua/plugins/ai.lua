return {
  {
    "folke/sidekick.nvim",
    opts = { cli = { mux = { enabled = true, create = "split" } } },
    config = function(_, opts)
      require("sidekick").setup(opts)

      require("sidekick.config").cli.tools = {
        copilot = {},
        devin = {
          cmd = { "devin" },
          is_proc = "\\<devin\\>",
          url = "https://github.com/cognition-ai/devin",
          resume = { "--resume" },
          continue = { "--continue" },
        },
      }
    end,
  },
}
