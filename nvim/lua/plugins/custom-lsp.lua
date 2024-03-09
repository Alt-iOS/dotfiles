return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {},
      tailwindcss = {
        filetypes = { "html", "css", "scss", "jsscript", "javascriptreact", "typescript", "typescriptreact", "rust" },
        init_options = {
          userLanguages = {
            rust = "html",
          },
        },
        on_attach = function(client, bufnr)
          require("tailwindcss-colors").buf_attach(bufnr)
        end,
      },
      cssls = {},
    },
  },
}
