return {
  -- add vscode
  {
    "Mofiqul/vscode.nvim",
    opts = {
      color_overrides = {
        vscLineNumber = "#99ccff",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
