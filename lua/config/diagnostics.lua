vim.diagnostic.config({
  virtual_text = true, -- Show inline messages
  signs = true,        -- Show signs in the gutter
  underline = true,    -- Underline problematic text
  update_in_insert = false, -- Don't update diagnostics while typing
  severity_sort = true,     -- Sort diagnostics by severity
})
