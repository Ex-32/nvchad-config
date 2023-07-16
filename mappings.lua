local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>",  "Window left"  },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>",  "Window down"  },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>",    "Window up"    },
    ["<leader>s"] = {
        function ()
            vim.opt.spell = not vim.opt.spell
        end,
        "Toggle Spellcheck",
    },
  }
}

M.rust_tools = {
  n = {
    ["<C-space>"] = {
      function ()
        require("rust-tools").hover_actions.hover_actions()
      end,
      "Hover Actions"
    },
    ["<leader>a"] = {
      function ()
        require("rust-tools").code_action_group.code_action_group()
      end,
      "Code Actions"
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Update crates"
    },
  }
}

return M
