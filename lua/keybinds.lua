local map = vim.api.nvim_set_keymap
local option = { noremap = true, silent = true }

-- default key
-- insert mode
map("i", "<ESC>", "<ESC>:w<CR>", option)
-- normal mode
map("n", "vsp", ":vsp<CR>", option)
map("n", "sp", ":sp<CR>", option)
-- 标签关闭
map("n", "cc", "<C-w>c", option)
map("n", "co", "<C-w>o", option)
-- inter page 标签切换
map("n", "ah", "<C-w>h", option)
map("n", "aj", "<C-w>j", option)
map("n", "ak", "<C-w>k", option)
map("n", "al", "<C-w>l", option)

-- tab line change
map("n", "nm", ":BufferLineCycleNext<CR>", option)
map("n", "nb", ":BufferLineCyclePrev<CR>", option)
map("n", "nc", ":BufferLinePickClose<CR>", option)
map("n", "np", ":BufferLinePick<CR>", option)
map("n", "<C-w>", ":bd<CR>", option)

-- 缩进
map("v", "<Tab>", "<S-i><Tab><ESC>", option)
map("v", ">", ">gv", option)
map("v", "<", "<gv", option)

local pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
  toggler = {
    line = "gcc",
    block = "gbc",
  },
  opleader = {
    line = "gc",
    bock = "gb",
    -- gc3j 注册往下三行
    -- gbi{ 注释{}的内容
  },
}
map("n", "<C-_>", "gcc", { noremap = false })
map("i", "<C-_>", "<ESC>gcc", { noremap = false })
map("v", "<C-_>", "gbc", { noremap = false })

return pluginKeys
