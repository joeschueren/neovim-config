require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "phpactor", "lua_ls" }
})

local capabilties = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup { capabilities = capabilities }
require('lspconfig').tsserver.setup { capabilities = capabilities }
require('lspconfig').phpactor.setup { capabilities = capabilities }
