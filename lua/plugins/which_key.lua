return {
    -- Create key bindings that stick.
    "folke/which-key.nvim",
    opts = {
        defaults = {
            ["<localLeader>c"] = { name = "+leetcode" },
            ["<localLeader>d"] = { name = "+dart" },
            ["<localLeader>h"] = { name = "+hledger" },
            ["<localLeader>t"] = { name = "+vimtex" }, -- NOTE: Moved from <localLeader>l
            ["<localLeader>p"] = { name = "+python" },
        },
    },
}
