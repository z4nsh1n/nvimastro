-- function() require("astrocore.buffer").nav(vim.v.count1) end,

vim.keymap.set("n", "<A-h>", function() require("astrocore.buffer").nav(-vim.v.count1) end)
vim.keymap.set("n", "<A-l>", function() require("astrocore.buffer").nav(vim.v.count1) end)
vim.keymap.set("n", "<S-Q>", ":wq!<cr>")

vim.keymap.set("i", "<Esc>", "<NOP>", { noremap = true })
vim.keymap.set("i", "<A-f>", "<S-Right>", { noremap = true })
vim.keymap.set("i", "<A-b>", "<S-Left>", { noremap = true })
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true })
vim.keymap.set("i", "<C-e>", "<End>", { noremap = true })
vim.keymap.set("i", "<C-a>", "<C-o>^", { noremap = true })

vim.keymap.set("i", "<c-c>", "<Esc>", { noremap = true })
vim.keymap.set("n", "<c-c>", "<Esc>", { noremap = true })
vim.keymap.set("v", "<c-c>", "<Esc>", { noremap = true })
vim.keymap.set("o", "<c-c>", "<Esc>", { noremap = true })

vim.keymap.set("i", "<A-f>", "<C-o>e<C-o>a", { noremap = true })
vim.keymap.set("i", "<A-b>", "<S-Left>", { noremap = true })
vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true })
vim.keymap.set("i", "<C-f>", "<C-o>f", { noremap = true })
vim.keymap.set("i", "<C-s>", "<C-o>F", { noremap = true })
