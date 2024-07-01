require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map(
  "n",
  "<leader>db",
  function() print("this is my mapping") end,
  { desc = "Toggle Debug Breakpoint"}
)
--   n = {
--     ["<leader>db"] = {"<cmd> DagToggleBreakpoint <CR>"}
--   }
-- }
--
-- M.dap_python = {
--   plugin = true,
--   n = {
--     ["<leader>dpr"] = {
--       function()
--         require('dap-python').test_method()
--       end
--     }
--   }
-- }
