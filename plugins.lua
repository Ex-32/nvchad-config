local plugins = {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    config = function(_, opts)
      require("treesitter-context").setup(opts)
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "pyhton", "sh", "bash", "c", "cpp" },
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "shellcheck",
        "mypy",
        "ruff",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = "neovim/nvim-lspconfig",
    ft = "rust",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "nmac427/guess-indent.nvim",
    lazy = false,
    config = function (_, opts)
      require("guess-indent").setup(opts)
    end
  }
}
return plugins
