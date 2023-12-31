return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
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
      volar = {
        settings = {
          css = {
            validate = true,
            lint = { unknownAtRules = "ignore" }, -- ignore @ rules like @tailwind
          },
          scss = {
            validate = true,
            lint = { unknownAtRules = "ignore" }, -- ignore @ rules like @tailwind
          },
          less = { validate = true },
        },
      },
      tailwindcss = {},
      cssls = {},
    },
    dependencies = { "nvimdev/lspsaga.nvim" },
  },
}
