local Util = require("lazyvim.util")

return {
  "nvim-neo-tree/neo-tree.nvim",
    keys = function()
    return {
        {
        "<leader>fe",
        function()
            require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
        end,
        desc = "Explorer NeoTree (root dir)",
        },
        {
        "<leader>fE",
        function()
            require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
        },
        {
        "<leader>ge",
        function()
            require("neo-tree.command").execute({ source = "git_status", toggle = true })
        end,
        desc = "Git explorer",
        },
        {
        "<leader>be",
        function()
            require("neo-tree.command").execute({ source = "buffers", toggle = true })
        end,
        desc = "Buffer explorer",
        },
      }
    end,
  opts = {
    window = {
      mappings = {
        ["o"] = "open",
        ["e"] = "noop",
        ["ox"] = "toggle_auto_expand_width",
      },
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[setlocal relativenumber]])
        end,
      },
    },
  },
}
