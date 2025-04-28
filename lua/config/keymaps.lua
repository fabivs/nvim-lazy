-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement number under cursor
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)

-- Select all in normal mode
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Clipboard
-- paste and delete without updating the clipboard
vim.keymap.set("x", "<BS>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<BS>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<BS>D", [["_D]])
-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]], { remap = true })

vim.keymap.set("n", "yc", "yygccp", { remap = true, desc = "Comment and duplicate current line" })

-- Neo-tree vinegar keybind
-- keymap.set("n", "-", ":Neotree toggle current reveal_force_cwd<cr>", opts)
keymap.set("n", "-", ":Explore<CR>", opts)

keymap.set("n", "<leader>fp", '<cmd>let @+ = expand("%")<CR>', { desc = "Copy relative Path" })
keymap.set(
  "n",
  "<leader>fP",
  "<cmd>let @+ = join([expand('%'),  line(\".\")], ':')<CR>",
  { desc = "Copy relative Path and current line" }
)
