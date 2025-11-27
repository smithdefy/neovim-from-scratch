-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- Add remaps here
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = "NetRW file explorer" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Add config modifiers here
--vim.diagnostic.config({ virtual_text = true })
