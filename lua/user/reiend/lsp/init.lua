require("mason").setup()
require("mason-lspconfig").setup()

-- servers
require "user.reiend.lsp.servers.lua_ls"
require "user.reiend.lsp.servers.tsserver"
