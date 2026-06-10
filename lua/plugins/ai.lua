return {
  {
    "folke/sidekick.nvim",
    opts = { cli = { mux = { enabled = true, create = "split" } } },
    config = function(_, opts)
      require("sidekick").setup(opts)

      -- NES diff highlights: Same colours than tokyo night minimal theme for delta
      vim.api.nvim_set_hl(0, "SidekickDiffAdd", { fg = "#000000", bg = "#449dab" })
      vim.api.nvim_set_hl(0, "SidekickDiffDelete", { fg = "#000000", bg = "#914c54" })

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
