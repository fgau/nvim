vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- netrw directoy listing
vim.keymap.set("n", "<leader>n", ":Ex<CR>")

-- lazygit
vim.keymap.set("n", "<leader>g", ":LazyGit<CR>")
