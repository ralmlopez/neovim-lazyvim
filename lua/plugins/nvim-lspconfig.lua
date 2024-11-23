return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
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
