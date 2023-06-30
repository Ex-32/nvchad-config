local on_attach =  require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local options = {
  tools = {
    inlay_hints = {
      other_hints_prefix = "󰆧 ",
    },
  },
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

return options
