vim.wo.number = true
vim.wo.wrap = false
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.mouse = "a"
vim.o.writebackup = false
vim.o.smartindent = true
vim.o.completeopt = "menu,menuone,noselect"

vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

-- color scheme config

require("doom-one").setup({
    transparent_background = true,
    plugins_integrations = {
        bufferline = true,
        gitsigns = true,
        telescope = true,
        neogit = false,
        nvim_tree = true,
        dashboard = false,
        startify = false,
        whichkey = true,
        indent_blankline = true,
        vim_illuminate = false,
        lspsaga = true,
    },
})

require("keybinds")

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

vim.cmd([[
    augroup TabStopSelection
    autocmd!
    autocmd FileType python setl shiftwidth=4 tabstop=4 expandtab
    augroup end 
]])
