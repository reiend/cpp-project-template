require("mason").setup()
require("mason-lspconfig").setup()

-- sarvers
require "user.reiend.lsp.servers.lua_ls"

-- format
local keymap = vim.keymap.set
keymap('n', '<leader>pf', function(_)
  vim.lsp.buf.format()
end, { desc = '[P]roject [F]ormat' })

vim.api.nvim_command("command! Format lua vim.lsp.buf.format()")
