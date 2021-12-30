vim.g.nvim_tree_quit_on_open = 1
require('nvim-tree').setup({
  auto_close = false,
  open_on_tab = true,
  update_focused_file = {
    enable = true
  },
  view = {
    auto_resize = true
  },
  filters = {
    custom = {'.git', 'node_modules'}
  }
})

-- Mappings for nvimtree
vim.api.nvim_set_keymap(
  'n', '<A-1>', ':NvimTreeToggle<CR>',
  {
    noremap = true,
    silent = true
  }
)

vim.api.nvim_set_keymap(
  'i', '<A-1>', '<ESC>:NvimTreeToggle<CR>',
  {
    noremap = true,
    -- silent = true
  }
)
