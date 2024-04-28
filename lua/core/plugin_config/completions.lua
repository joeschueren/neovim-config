local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

cmp.setup({

  completion = {
     completeopt = "menu, menuone, preview, noselect",
  },
  snippet = {
     expand = function(args)
	luasnip.lsp_expand(args.body)
     end,
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({select = true}),
  }),

  sources = cmp.config.sources({
    { name = 'nvim-lsp' },
    { name = 'buffer' },
    { name = "luasnip" },
    { name = "path" },
  }),
  formatting = {
    format = lspkind.cmp_format({
	maxwidth = 50,
	ellipsis_char = "...",
    }),
  }
})
