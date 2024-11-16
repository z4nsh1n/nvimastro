
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls", "zls", "clangd", "rust_analyzer", "ols", "ocamllsp"
        -- add more arguments for adding more language servers
      },
    },
  },
}
