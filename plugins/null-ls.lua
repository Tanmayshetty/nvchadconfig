local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.eslint_d,
  b.formatting.prettierd,
  b.diagnostics.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,

  -- Styles
  b.formatting.stylelint,
  b.diagnostics.stylelint,
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- format on save
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil,10000)"
    end
  end,
}
