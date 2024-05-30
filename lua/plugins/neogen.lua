-- A better annotation generator. Supports multiple languages and annotation conventions.
return {
    "danymat/neogen",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = true,
    keys = {
        {
            "<leader>cg",
            function()
                require("neogen").generate()
            end,
            desc = "Generate docstring",
        },
    },
}
