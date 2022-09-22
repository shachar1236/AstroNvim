------- personal config ---------

-- move lines with alt --
vim.api.nvim_set_keymap("i", "ww", "<ESC>", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })
-- move between buffers --
-- vim.api.nvim_set_keymap("n", "g<tab>", ":bnext<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "g<s-tab>", ":bprev<CR>", { noremap = true })

-- tab size --
vim.api.nvim_set_option("tabstop", 4)
vim.api.nvim_set_option("shiftwidth", 4)
vim.api.nvim_set_option("expandtab", true)
-- gui --
vim.api.nvim_set_option("mouse", "a")
vim.api.nvim_set_option("guifont", "JetBrainsMono Nerd Font Mono:h12")

vim.g.neovide_transparency = 0.97
