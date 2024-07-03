return {
    {
        "lervag/vimtex",
        lazy = false, -- lazy-loading will disable inverse search
        config = function()
            vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
            vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

            -- CUSTOM --
            -- vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_compiler_latexmk_engines = { _ = "-lualatex" }
        end,
        keys = {
            { "<localLeader>l", "", desc = "+latex" },
        },
    },
}
