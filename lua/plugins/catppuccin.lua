  return { 
    "catppuccin/nvim", 
    lazy = false, 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      -- configure catppuccin plugin
      auto_integrations = true,
      vim.cmd.colorscheme "catppuccin-macchiato"
    end,
  }

