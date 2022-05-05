require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "json",
    "c",
    "cpp",
    "php",
    "lua",
  },

  highlight = {
    enable = true,
  },
}
