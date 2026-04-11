return {
  "stevearc/oil.nvim",
  ---@module "oil"
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = false,
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        return name == ".git"
      end,
    },
    float = {
      padding = 2,
      max_width = 0.7,
      max_height = 0.7,
    },
    keymaps = {
      ["q"] = "actions.close",
      ["<Esc>"] = "actions.close",
      ["<C-h>"] = false,
      ["<C-l>"] = false,
      ["<C-v>"] = { "actions.select", opts = { vertical = true } },
      ["<C-s>"] = { "actions.select", opts = { horizontal = true } },
      ["<C-t>"] = { "actions.select", opts = { tab = true } },
      ["<C-r>"] = "actions.refresh",
      ["<leader>p"] = "actions.preview",
      ["<leader>y"] = "actions.yank_entry",
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  keys = {
    { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil" },
  },
}
