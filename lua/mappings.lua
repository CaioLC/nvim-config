require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.keymap.set('n', '<Leader>dr', function() require('dapui').open({reset = true}) end, { desc = "reset ui"})
vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = "continue"})
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = "step_over"})
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = "step_into"})
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = "step_out"})
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, { desc = "toggle breakpoint"})
vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end, { desc = "set breakpoint"})
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc = "log breakpoint"})
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, { desc = "repl"})
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = "run last"})
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end, { desc = "hover"})
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end, { desc = "preview"})
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end, { desc = "frames"})
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end, { desc = "scopes"})
