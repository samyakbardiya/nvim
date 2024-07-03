-- A neovim plugin for generating .gitignore files.
return {
    "wintermute-cell/gitignore.nvim",
    enabled = false,
    config = function()
        require("gitignore")
    end,
}
