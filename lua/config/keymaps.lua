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

-- Tab navigation
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-tab>", ":tabprev<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Neo-tree vinegar keybind
keymap.set("n", "-", ":Neotree toggle current reveal_force_cwd<cr>", opts)

-- Copy current file path to clipboard
keymap.set("n", "<leader>fp", '<cmd>let @+ = expand("%")<CR>', { desc = "Copy relative Path" })
keymap.set(
  "n",
  "<leader>fP",
  "<cmd>let @+ = join([expand('%'),  line(\".\")], ':')<CR>",
  { desc = "Copy relative Path and current line" }
)
