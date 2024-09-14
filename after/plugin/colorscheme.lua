require("gruber-darker").setup({
  italic = {
    strings = false,
    comments = false,
    folds = false,
  }
})
vim.o.background = "dark"
vim.cmd([[colorscheme gruber-darker]])
