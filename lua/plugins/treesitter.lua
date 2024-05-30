-- Nvim Treesitter configurations and abstraction layer
return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        table.insert(opts.ensure_installed, {
            "git_config",
            "git_rebase",
            "gitcommit",
            "gitignore",
            "ledger",
            "printf",
            "requirements",
            "sql",
            "ssh_config",
            "tmux",
            "todotxt",
        })
    end,
}
