return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["rust-analyzer"] = {
          keys = {
            {
              "K",
              function()
                vim.cmd.RustLsp({ "hover", "actions" })
              end,
              desc = "Rust Hover",
            },
          },
        },
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    ft = "rust",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
              extraArgs = {
                "--no-deps",
                "--",
                "-Wclippy::pedantic",
                "-Aclippy::missing_errors_doc",
                "-Aclippy::must_use_candidate",
                "-Aclippy::return_self_not_must_use",
              },
            },
            imports = { granularity = { group = "item" } },
          },
        },
      },
    },
  },
}
