require("null-ls").setup({
  sources = {
    --[[ require("null-ls").builtins.formatting.stylua.with({
      extra_args = {"--config-path", vim.fn.expand("~/.config/nvim/stylua.toml")},
    }) ]]
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.formatting.uncrustify,
    -- require("null-ls").builtins.formatting,
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
