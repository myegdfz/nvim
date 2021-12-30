require('snippets')
local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<A-m>'] = cmp.mapping.select_prev_item(),
    ['<A-n>'] = cmp.mapping.select_next_item(),
    ['<A-Insert>'] = cmp.mapping.complete(),
    ['<A-w>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    },
    ['<A-j>'] = cmp.mapping(function () luasnip.jump(1) end, { 'i', 's' }),
    ['<A-k>'] = cmp.mapping(function () luasnip.jump(-1) end, { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(function (fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function (fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' })
  },
  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'cmp_tabnine' }
  }
})

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
})

require('nvim-autopairs').setup()

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())


-- init surround
require('surround').setup({
  mappings_style = 'surround',
  map_insert_mode = false
})
-- disable surround in visual mode since conflictions in snippets
vim.api.nvim_del_keymap('v', 's')

-- init comment
require('Comment').setup(require('keybinds').comment)
