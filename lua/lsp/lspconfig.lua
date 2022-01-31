local ok, lsp_config = pcall(require, "lspconfig")
if not ok then
    return
end

local lsp_installer = require "nvim-lsp-installer"

local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}



