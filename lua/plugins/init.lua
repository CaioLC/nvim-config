return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    config = function ()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.mypy,
          null_ls.builtins.formatting.black,
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			-- "lua-language-server", "stylua",
  			-- "html-lsp", "css-lsp" , "prettier",
        "pyright", "mypy", "ruff-lsp", "black"
  		},
  	},
  },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
