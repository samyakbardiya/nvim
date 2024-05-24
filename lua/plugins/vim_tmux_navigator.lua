return {
  -- Seamless navigation between tmux panes and vim splits
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    -- stylua:ignore
    {
      "<C-h>",
      "<cmd>TmuxNavigateLeft<cr>",
      mode = { "n", "o", "v" },
      desc = "Go to left window [tmux]",
      remap = true,
    },
    {
      "<C-j>",
      "<cmd>TmuxNavigateDown<cr>",
      mode = { "n", "o", "v" },
      desc = "Go to down window",
      remap = true,
    },
    {
      "<C-k>",
      "<cmd>TmuxNavigateUp<cr>",
      mode = { "n", "o", "v" },
      desc = "Go to up window",
      remap = true,
    },
    {
      "<C-l>",
      "<cmd>TmuxNavigateRight<cr>",
      mode = { "n", "o", "v" },
      desc = "Go to right window",
      remap = true,
    },
    {
      "<C-Bslash>",
      "<cmd>TmuxNavigatePrevious<cr>",
      mode = { "n", "o", "v" },
      desc = "Go to previous window",
      remap = true,
    },
  },
}
