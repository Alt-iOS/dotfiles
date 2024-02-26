return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {},
      -- Ensure mason installs the server
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            -- Add clippy lints for Rust.
            checkOnSave = {
              allFeatures = true,
              command = "clippy",
              extraArgs = { "--all" },
            },
          },
        },
      },
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
