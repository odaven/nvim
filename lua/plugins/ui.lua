return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Go to Left Window" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Go to Lower Window" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Go to Upper Window" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Go to Right Window" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Go to Previous Window" },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { preset = { header = "" } },
      picker = { previewers = { git = { builtin = false } } },
    },
  },
  {
    "folke/flash.nvim",
    config = function(_, opts)
      require("flash").setup(opts)
      vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#FFFFFF", bold = true })
    end,
  },
}
