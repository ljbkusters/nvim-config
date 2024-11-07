local trouble = require("trouble")

trouble.setup()

vim.keymap.set("n", "<leader>xx", function() trouble.toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xp", function() trouble.toggle() end)
