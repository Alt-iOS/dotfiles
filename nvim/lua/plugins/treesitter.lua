return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "css",
      "scss",
      "ruby",
      "rust",
      "vue",
      "python",
      "lua",
      "bash",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "dart",
      "go",
      "svelte",
    })
  end,
}
