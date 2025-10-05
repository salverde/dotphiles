return {
  -- Formatter configuration
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        docker = { "dockerfile" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        markdown = { "prettier" },
      },
      default_format_opts = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },

  -- Install only necessary formatters and language servers
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "prettier",
        "vtsls",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "yaml-language-server",
        "eslint-lsp",
      })
    end,
  },
}
