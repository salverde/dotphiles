-- lua/plugins/editor.lua
return {
  -- Disable snacks.nvim explorer since we're using Oil
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      dashboard = { enabled = false },
    },
  },

  -- Oil.nvim - Better file explorer (consolidated configuration)
  -- {
  --   "stevearc/oil.nvim",
  --   lazy = false,
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = function()
  --     require("oil").setup({
  --       default_file_explorer = true,
  --       delete_to_trash = true,
  --       skip_confirm_for_simple_edits = true,
  --       view_options = {
  --         show_hidden = true,
  --         natural_order = "fast",
  --         is_always_hidden = function(name, _)
  --           return name == ".git" or name == ".DS_Store"
  --         end,
  --         is_hidden_file = function(name, bufnr)
  --           local m = name:match("^%.")
  --           return m ~= nil
  --         end,
  --       },
  --       win_options = {
  --         wrap = false,
  --       },
  --       preview_split = "auto",
  --       -- Better icons
  --       columns = {
  --         "icon",
  --         -- "type",
  --         -- "size",
  --       },
  --       -- Configuration for the file preview window
  --       preview_win = {
  --         -- Whether the preview window is automatically updated when the cursor is moved
  --         update_on_cursor_moved = true,
  --         -- How to open the preview window "load"|"scratch"|"fast_scratch"
  --         preview_method = "fast_scratch",
  --         -- A function that returns true to disable preview on a file e.g. to avoid lag
  --         disable_preview = function(filename)
  --           return false
  --         end,
  --         -- Window-local options to use for preview window buffers
  --         win_options = {},
  --       },
  --     })
  --   end,
  --   keys = {
  --     { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  --     { "<leader>-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  --     { "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer" },
  --   },
  -- },
  --
  -- Git integration
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
    },
  },

  -- Multiple cursors (like PhpStorm)
  {
    "mg979/vim-visual-multi",
    keys = {
      { "<C-n>", mode = { "n", "v" } },
      { "<C-Up>", mode = { "n", "v" } },
      { "<C-Down>", mode = { "n", "v" } },
    },
  },

  -- Better search and replace
  {
    "nvim-pack/nvim-spectre",
    keys = {
      { "<leader>sr", '<cmd>lua require("spectre").open()<cr>', desc = "Replace in files (Spectre)" },
    },
  },

  -- Project management
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        patterns = { ".git", "composer.json", "package.json" },
      })
    end,
  },

  -- Terminal integration
  {
    "akinsho/toggleterm.nvim",
    config = true,
    keys = {
      { "<C-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  },
}
