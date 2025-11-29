return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {},
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      auto_integraitions = true,
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}

