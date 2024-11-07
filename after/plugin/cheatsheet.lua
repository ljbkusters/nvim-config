local cheatsheet = require('nvcheatsheet')

cheatsheet.setup({keymaps ={
  ["General"] = {
    {"general keymaps", "none"},
  },
  ["Harpoon"] = {
    {"Add buffer to harpoon list", "<leader>a"},
    {"Open harpoon list", "<leader>m"},
    {"Quick open file {1/2/3/4}", "<C-{h/j/k/l}>"},
    {"Quick nav {next/prev}", "<C-S-{j/k}>"},
    {"Quick open terminal {1/2/3/4}", "<M-{h/j/k/l}>"},
  },
  ["LSP"] = {
    {"Go to definition", "gd"},
    {"Open info buffer (hover)", "K"},
    {"{Next/Prev} item", "<C-{j/k}"},
    {"Confirm selection", "<C-y"},
    {"Complete", "<C-Space"},
  },
  ["Telescope"] = {
    {"Git files", "<C-p>"},
    {"Fuzzy find over project files", "<leader>pf>"},
    {"Fuzzy find via grep", "<leader>pg>"},
  },
  ["Trouble"] = {
    {"Diagnistic for buffer", "<leader>xx"},
    {"Diagnostics for project", "<leader>xp"},
  },
}})

vim.keymap.set("n", "<F1>", cheatsheet.toggle)
