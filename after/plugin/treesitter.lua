require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "dart",
    "go",
    "python",
    "cpp",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
