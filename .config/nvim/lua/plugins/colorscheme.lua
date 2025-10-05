return {
  "0xstepit/flow.nvim",
  lazy = false,
  priority = 1000,
  tag = "v2.0.2",
  opts = {
    theme = {
      style = "dark", --  "dark" | "light"
      contrast = "default", -- "default" | "high"
      transparent = true, -- true | false
    },
    colors = {
      mode = "default", -- "default" | "dark" | "light"
      fluo = "cyan", -- "pink" | "cyan" | "yellow" | "orange" | "green"
      custom = {
        saturation = "", -- "" | string representing an integer between 0 and 100
        light = "", -- "" | string representing an integer between 0 and 100
      },
    },
    ui = {
      borders = "fluo", -- "theme" | "inverse" | "fluo" | "none"
      aggressive_spell = false, -- true | false
    },
  },
  config = function(_, opts)
    require("flow").setup(opts)
    vim.cmd("colorscheme flow")
  end,
}
