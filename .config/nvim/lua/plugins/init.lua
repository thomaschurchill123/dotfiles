return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        current_line_blame = true,
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "hcl",
        "python",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Remove existing buffer source if it exists
      local new_sources = {}
      for _, source in ipairs(opts.sources or {}) do
        if source.name ~= "buffer" then
          table.insert(new_sources, source)
        end
      end

      -- Add buffer source with get_bufnrs option
      table.insert(new_sources, {
        name = "buffer",
        option = {
          get_bufnrs = function()
            -- Include all open buffers
            return vim.api.nvim_list_bufs()
          end,
        },
      })

      -- Update the sources
      opts.sources = new_sources
    end,
  },
}
