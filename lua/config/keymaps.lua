local map = vim.keymap.set

-- Quick exit Insert Mode (easier than reaching for Esc)
map("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })

-- Quick save with Ctrl+s (all modes)
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Select all (Ctrl+a)
map("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Paste without losing clipboard (Very important)
-- When pasting over text, deleted text will NOT go into clipboard
map("x", "p", '"_dP')

-- Continuous indent without losing selection
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move selected lines up/down (Like Alt+Up/Down in VSCode)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Up" })

-- Scroll up/down and keep cursor centered
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Search (n/N) and keep results centered
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Quick window splits
map("n", "<leader>\\", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
map("n", "<leader>-", "<cmd>split<cr>", { desc = "Horizontal Split" })