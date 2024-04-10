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
  harpoon_term.sendCommand(idx, "bash\r") -- open bash
  harpoon_term.sendCommand(idx, "ls -lah\r")
end


-- harpoon file mappings
vim.keymap.set('n', '<leader>a', add_to_harpoon)
vim.keymap.set('n', '<leader>m', harpoon_ui.toggle_quick_menu);

-- quick jump to files
vim.keymap.set('n', '<leaderhj>', function() nav_to_file(1) end);
vim.keymap.set('n', '<leader>hj', function() nav_to_file(2) end);
vim.keymap.set('n', '<leader>hk', function() nav_to_file(3) end);
vim.keymap.set('n', '<leader>hl', function() nav_to_file(4) end);

-- terminal mappings
vim.keymap.set('n', '<leader>th', open_terminal(1));
vim.keymap.set('n', '<leader>tj', open_terminal(2));
vim.keymap.set('n', '<leader>tk', open_terminal(3));
vim.keymap.set('n', '<leader>tl', open_terminal(4));
