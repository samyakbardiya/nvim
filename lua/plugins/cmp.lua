return {
    -- A completion plugin for neovim coded in Lua.
    {
        "nvim-cmp",
        opts = function(_, opts)
            local cmp = require("cmp")
            opts.mapping = cmp.mapping.preset.insert({
                -- ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                -- ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<C-a>"] = cmp.mapping.confirm({ select = true }),
                -- ["<C-a>"] = LazyVim.cmp.confirm(),
            })

            table.insert(opts.sources, 1, { name = "supermaven", group_index = 1, priority = 100 })
            table.insert(opts.sources, { name = "hledger" })
            table.insert(opts.sources, { name = "natdat" })
        end,
    },
    -- nvim-cmp source to autocomplete natural dates and turm them into ISO dates
    { "Gelio/cmp-natdat", config = true },
}
