require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "json",
    "php"
  },
  highlight = {
    enable = true
  }
}
