return {
  -- Vim plugin for Ledger
  {
    "ledger/vim-ledger",
    lazy = false,
    ft = { "ledger" },
    keys = {
      { "<localLeader>ha", "vip<cmd>LedgerAlign<CR>", desc = "Align current transaction", silent = true },
      { "<localLeader>ha", ":LedgerAlign<CR>", mode = "v", desc = "Align Selected", silent = true },
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
