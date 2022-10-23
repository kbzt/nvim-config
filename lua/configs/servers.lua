require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require('mason-lspconfig').setup({
  automatic_installation = true,
})

local lspconfig = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local servers = {
  'bashls',
  'clangd',
  'cmake',
  'cssls',
  'dockerls',
  'html',
  'jsonls',
  'tsserver',
  'pyright',
  'rust_analyzer',
  'svelte',
  'sumneko_lua',
  'tailwindcss'
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end
