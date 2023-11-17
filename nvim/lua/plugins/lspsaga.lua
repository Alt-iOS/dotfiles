return {
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({ outline = { win_width = 60 } })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
