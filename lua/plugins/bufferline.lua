-- A snazzy bufferline for Neovim
return {
    "akinsho/bufferline.nvim",
    dependencies = { "catppuccin" },
    opts = {
        options = {
            -- stylua: ignore
            middle_mouse_command = function(n) LazyVim.ui.bufremove(n) end,
            right_mouse_command = nil,
            show_buffer_close_icons = false,
        },
    },
    config = function(_, opts)
        -- catppuccin integration --
        opts.highlights = require("catppuccin.groups.integrations.bufferline").get({
            styles = { "bold", "underline" },
            close_button_visible = false,
        })

        require("bufferline").setup(opts)
        -- Fix bufferline when restoring a session
        vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
            callback = function()
                vim.schedule(function()
                    pcall(nvim_bufferline)
                end)
            end,
        })
    end,
}
