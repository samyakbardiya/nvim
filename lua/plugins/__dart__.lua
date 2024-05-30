return {
    -- {
    --   -- Syntax highlighting for Dart in Vim
    --   "dart-lang/dart-vim-plugin",
    --   ft = { "dart" },
    -- },
    {
        -- Tools to help create flutter apps in neovim using the native lsp
        "akinsho/flutter-tools.nvim",
        ft = { "dart" },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim",
        },
        config = true,
        opts = {
            -- https://github.com/akinsho/flutter-tools.nvim#full-configuration
            ui = { border = "rounded" },
            debugger = { enabled = true },
            fvm = true,
            widget_guides = { enabled = true },
            closing_tags = { prefix = "/> ", enabled = true },
        },
        keys = {
            {
                "<localleader>do",
                "<cmd>FlutterOutlineToggle<cr>",
                desc = "Flutter Outline",
            },
            {
                "<localleader>dt",
                function()
                    require("telescope").extensions.flutter.commands()
                end,
                desc = "Flutter Tools",
            },
            {
                "<localleader>dv",
                function()
                    require("telescope").extensions.flutter.fvm()
                end,
                desc = "Flutter Versions",
            },
        },
    },
}
