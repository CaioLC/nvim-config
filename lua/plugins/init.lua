return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- ensure installs
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			-- "html-lsp", "css-lsp" , "prettier",
  			"lua-language-server", "stylua",
        "pyright", "mypy", "ruff-lsp", "black", "debugpy",
        "zls",
  		},
  	},
  },
  -- debugger
  {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    -- "theHamsta/nvim-dap-virtual-text",
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      -- local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dapui")
      require("dap-python").setup()
    end,
  },
  -- diagnostics and formatters
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    config = function () require("configs.null_ls") end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
}
