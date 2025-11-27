return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "tailwindcss", "vtsls", "vimls" }
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
