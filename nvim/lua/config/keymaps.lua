-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wk = require("which-key")

wk.register({
  s = {
    name = "+search",
    l = { "<cmd> Telescope resume<CR>", "Resume last Telescope search" },
    R = { '<cmd>lua require("spectre").open_file_search({})<CR>', "Replace on current file" },
  },
  r = {
    name = "+run",
    r = { "<cmd>RustRun<CR>", "Rust Run" },
    R = { "<cmd>RustRunnables<CR>", "Rust Runnables (in terminal)" },
    a = { "<cmd>RorCommands<CR>", "Ror commands" },
  },
  f = { u = { "<cmd> Telescope undo<CR>", "Undo Tree" } },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("wa")
end, { silent = true, desc = "Save all files" })

vim.keymap.set("n", "<leader>cs", function()
  vim.cmd("Lspsaga outline")
end, { silent = true, desc = "Symbols outline" })
