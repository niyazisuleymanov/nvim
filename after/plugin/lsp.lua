local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  update_in_insert = false,
  underline = true,
})