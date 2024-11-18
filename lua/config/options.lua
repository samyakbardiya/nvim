-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = "-"

vim.opt.cursorcolumn = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.splitright = false
vim.opt.splitbelow = false
-- vim.opt.scrolloff = 10

vim.opt.tabstop = 4

vim.g.python3_host_prog = os.getenv("HOME") .. "/.local/share/pyenv/versions/py3nvim/bin/python3"
-- vim.g.lazyvim_python_lsp = "basedpyright"

-- Neovide options
if vim.g.neovide then
    vim.o.guifont = "InputMono Nerd Font:h16"
    vim.opt.linespace = 0

    -- -- Helper function for transparency formatting
    -- local alpha = function()
    --     return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    -- end
    -- -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    -- vim.g.neovide_transparency = 0.0
    -- vim.g.transparency = 0.8
    -- vim.g.neovide_background_color = "#0f1117" .. alpha()
    -- vim.g.neovide_window_blurred = true
end

-- -- Disable Copilot by default :)
-- vim.cmd("Copilot disable")
