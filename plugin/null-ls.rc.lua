local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

null_ls.setup {
  sources = {
    -- Diagnostics
    null_ls.builtins.diagnostics.editorconfig_checker,
    null_ls.builtins.diagnostics.phpcs.with({ extra_args = { '--standard=WordPress' } }),
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.stylelint,
    null_ls.builtins.diagnostics.tidy,

    -- Formatting
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.phpcbf.with({ extra_args = { '--standard=WordPress' } }),
    null_ls.builtins.formatting.stylelint,
    null_ls.builtins.formatting.tidy,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end
}

vim.api.nvim_create_user_command(
  'DisableLspFormatting',
  function()
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
  end,
  { nargs = 0 }
)
