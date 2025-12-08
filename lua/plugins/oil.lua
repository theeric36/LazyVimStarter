return {
  {
    "stevearc/oil.nvim",
    enabled = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- default_file_explorer = false,
      float = {
        border = "rounded",
      },
    },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
      { "<leader>-", "<cmd>Oil --float .<cr>", desc = "Open parent directory" },
    },
    use_default_keymaps = false,
  },
  {
    "snacks.nvim",
    opts = {
      explorer = {
        -- enabled = false,
      },
    },
  },
}
