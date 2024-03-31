local lsp = require('lsp-zero')

-- LSP configuration
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

-- CMP Configuraiton (what is CMP???)
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({select = true}),
  ['<C-Space>'] = cmp.mapping.complete(),
})

-- lsp installation management
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'html',
    'jedi_language_server',
    'clangd',
  },
  handlers = {
    lsp.default_setup,
  },
})

lsp.setup()
