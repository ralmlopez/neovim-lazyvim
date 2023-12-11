return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      omnisharp = {
        -- https://github.com/williamboman/mason-lspconfig.nvim/issues/211
        -- after upgrade from neovim 0.8.3 to 0.9.0 need
        -- to turn off semantic highlighting from server to prevent E5248: Invalid character in group name
        -- every time you open a c# file.
        -- on_attach = function(client, bufnr)
        --   client.server_capabilities.semanticTokensProvider = nil
        -- end,
      },
      html = {
        filetypes = {
          "html",
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      },
      emmet_ls = {
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            },
          },
        },
      },
      cssls = {},
    },
  },
}
