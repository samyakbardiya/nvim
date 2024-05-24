-- neovim undotree written in lua
return {
  "jiaoshijie/undotree",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = true,
  keys = { -- load the plugin only when using it's keybinding:
    {
      "<leader>uu",
      function()
        require("undotree").toggle()
      end,
      desc = "Toggle Undotree",
    },
  },
}
