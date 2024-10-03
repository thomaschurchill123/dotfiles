-- ~/.config/nvim/lua/custom/configs/terraformls.lua

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "tf", "hcl", "terraform-vars", "tfvars" },
})
