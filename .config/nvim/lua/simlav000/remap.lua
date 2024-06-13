vim.g.mapleader = " "

-- Insert mode bindings
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })

-- Normal mode bindings
vim.api.nvim_set_keymap("n", "sn", ":set invnumber<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "sp", ":set invpaste<CR>", { noremap = true })

-- Visual mode bindings
vim.api.nvim_set_keymap("v", "<C-c>", ":w !xclip -i -sel c<CR><CR>", { noremap = true })
