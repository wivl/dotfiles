-- set leader key to SPACE
vim.g.mapleader = " "

-- vim file system
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move texts around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste and not reflash the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- global string replace
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

