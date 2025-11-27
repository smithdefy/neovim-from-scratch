return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true
      }
    }
  },
  filetypes = { "handlebars", "html", "htmlangular", "markdown", "mdx", "mustache", "css", "less", "postcss", "sass", "scss","javascript", "typescript", "vue"},
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
      includeLanguages = {
        eelixir = "html-eex",
        elixir = "phoenix-heex",
        eruby = "erb",
        heex = "phoenix-heex",
        htmlangular = "html",
        templ = "html"
      },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true
    }
  },
  workspace_required = true
}
