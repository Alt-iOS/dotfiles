-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wk = require("which-key")

wk.register({
  ["C-h"] = { "<cmd>TmuxNavigateLeft<CR>", "windows left" },
  ["C-j"] = { "<cmd>TmuxNavigateDown<CR>", "windows down" },
  ["C-k"] = { "<cmd>TmuxNavigateUp<CR>", "windows up" },
  ["C-l"] = { "<cmd>TmuxNavigateRight<CR>", "windows rigth" },
})
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
    -- a = { "<cmd>RorCommands<CR>", "Ror commands" },
  },
  f = { u = { "<cmd> Telescope undo<CR>", "Undo Tree" } },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("wa")
end, { silent = true, desc = "Save all files" })

local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
    .new({}, {
      prompt_title = "Harpoon",
      finder = require("telescope.finders").new_table({
        results = file_paths,
      }),
      previewer = conf.file_previewer({}),
      sorter = conf.generic_sorter({}),
    })
    :find()
end

vim.keymap.set("n", "<C-m>", function()
  toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end, { desc = "Add current file to harpoon" })
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Space>p", function()
  harpoon:list():prev()
end, { desc = "Previous harpoon file" })
vim.keymap.set("n", "<Space>n", function()
  harpoon:list():next()
end, { desc = "Next harpoon file" })
