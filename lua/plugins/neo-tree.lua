return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      vim.keymap.set('n', '<leader>gd', ':Neotree float reveal_file=%:p reveal_force_cwd<cr>', {})
      vim.keymap.set('n', '<leader>b', ':Neotree toggle show buffers right<cr>', {})
      vim.keymap.set('n', '<leader>s', ':Neotree float git_status<cr>', {})
      vim.keymap.set('n', '<leader>n', ':Neotree toggle reveal_force_cwd<CR>', {})
      vim.keymap.set('n', '<leader>-', function()
        local reveal_file = vim.fn.expand('%:p')
        if (reveal_file == '') then
          reveal_file = vim.fn.getcwd()
        else
          local f = io.open(reveal_file, "r")
          if (f) then
            f.close(f)
          else
            reveal_file = vim.fn.getcwd()
          end
        end
        require('neo-tree.command').execute({
          action = "focus",          -- OPTIONAL, this is the default value
          source = "filesystem",     -- OPTIONAL, this is the default value
          position = "left",         -- OPTIONAL, this is the default value
          reveal_file = reveal_file, -- path to file or folder to reveal
          reveal_force_cwd = true,   -- change cwd without asking if needed
        })
        end,
        { desc = "Open neo-tree at current file or working directory" }
      );
      require('neo-tree').setup({
        close_if_last_window = true,
        popup_border_style = "NC",
        enable_git_status = true,
        enable_diagnostics = true,
        window = {
          position = "left",
          width = 40,
        }
      })
    end
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "s1n7ax/nvim-window-picker",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        filter_rules = {
          include_current_win = false,
          autoselect_one = true,
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal", "quickfix" },
          },
        },
      })
    end,
  },
}
