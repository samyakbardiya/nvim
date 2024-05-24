return {
  -- Vim plugin for Ledger
  {
    "ledger/vim-ledger",
    lazy = false,
    ft = { "ledger" },
    -- config = function()
    --   vim.g.ledger_is_hledger = true
    --   vim.g.ledger.default_commodity = "INR"
    --   vim.g.ledger_date_format = "%Y-%m-%d"
    --   vim.g.ledger_extra_options = "--strict ordereddates payees uniqueleafnames"
    -- end,
    keys = {
      { "<localLeader>ha", "vip:LedgerAlign<CR>", silent = true, desc = "Align current transaction" },
      { "<localLeader>ha", ":LedgerAlign<CR>", mode = "v", silent = true, desc = "Align Selected" },
      { "<localLeader>hc", ":silent make | redraw! | cwindow<CR>", silent = true, desc = "Check transactions" },
      {
        "<localLeader>hC",
        ":silent !hledger check ordereddates | redraw! | cwindow<CR>",
        silent = true,
        desc = "Check transactions",
      },
      { "<localLeader>hF", ":LeaderAlignBuffer<CR>", desc = "Align whole File" },
    },
  },
  -- For writing hledger journal
  {
    "anekos/hledger-vim",
    ft = { "ledger" },
  },
  -- nvim-cmp source for ledger accounts
  {
    "piero-vic/cmp-ledger",
    ft = { "ledger" },
    config = function()
      require("cmp").setup({
        sources = {
          { name = "ledger" },
        },
      })
    end,
  },
}
