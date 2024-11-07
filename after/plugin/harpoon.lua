require("harpoon").setup()
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")
local harpoon_term = require("harpoon.term")

local function add_to_harpoon()
  print("Added this file to harpoon")
  harpoon_mark.add_file()
end

local function nav_to_file(idx)
   print(string.format("Jumped to file %d", idx))
   harpoon_ui.nav_file(idx)
end

local function open_terminal(idx)
  print(string.format("Opened teminal %d", idx))
  harpoon_term.gotoTerminal(idx)
end


-- harpoon file mappings
vim.keymap.set('n', '<leader>a', add_to_harpoon)
vim.keymap.set('n', '<leader>m', harpoon_ui.toggle_quick_menu);
-- vim.keymap.set('n', '<sc-J>', harpoon_ui.nav_next);
-- vim.keymap.set('n', '<sc-K>', harpoon_ui.nav_prev);

-- quick jump to files
vim.keymap.set('n', '<C-j>', function() nav_to_file(1) end);
vim.keymap.set('t', '<C-j>', function() nav_to_file(1) end);
vim.keymap.set('n', '<C-k>', function() nav_to_file(2) end);
vim.keymap.set('t', '<C-k>', function() nav_to_file(2) end);
vim.keymap.set('n', '<C-l>', function() nav_to_file(3) end);
vim.keymap.set('t', '<C-l>', function() nav_to_file(3) end);
vim.keymap.set('n', '<C-;>', function() nav_to_file(4) end);
vim.keymap.set('t', '<C-;>', function() nav_to_file(4) end);
-- 
-- -- terminal mappings
vim.keymap.set('n', '<M-j>', function() open_terminal(1) end);
vim.keymap.set('n', '<M-k>', function() open_terminal(2) end);
vim.keymap.set('n', '<M-l>', function() open_terminal(3) end);
vim.keymap.set('n', '<M-;>', function() open_terminal(4) end);
vim.keymap.set('t', '<M-j>', function() open_terminal(1) end);
vim.keymap.set('t', '<M-k>', function() open_terminal(2) end);
vim.keymap.set('t', '<M-l>', function() open_terminal(3) end);
vim.keymap.set('t', '<M-;>', function() open_terminal(4) end);
