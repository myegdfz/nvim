require('telescope').setup({
  defaults = {
    borderchars = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
  },
  extensions = {
    media_files = {
      filetypes = { 'png', 'webp', 'jpg', 'jpeg' },
      find_cmd = 'rg'
    }
  }
})

require('telescope').load_extension('media_files')

local opt = {noremap = true, silent = true}
vim.g.mapleader = ' '
-- mappings
vim.api.nvim_set_keymap('n', 'sf', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
vim.api.nvim_set_keymap('n', 'sg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opt)
vim.api.nvim_set_keymap('n', 'sb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
vim.api.nvim_set_keymap('n', 'sh', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)

-- highlights
local cmd = vim.cmd

cmd 'hi TelescopeBorder   guifg=#2a2e36'
cmd 'hi TelescopePromptBorder   guifg=#2a2e36'
cmd 'hi TelescopeResultsBorder  guifg=#2a2e36'
cmd 'hi TelescopePreviewBorder  guifg=#525865'
