-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- Clipboard
-- paste and delete without updating the clipboard
keymap.set("x", "<BS>p", [["_dp]])
keymap.set("x", "<BS>P", [["_dP]])
keymap.set({ "n", "v" }, "<BS>d", [["_d]])
keymap.set({ "n", "v" }, "<BS>D", [["_D]])
-- copy to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]], { remap = true })
-- paste from system clipboard
keymap.set({ "n", "v" }, "<leader>p", [["+p]])

keymap.set("n", "yc", "yygccp", { remap = true, desc = "Comment and duplicate current line" })

-- Neo-tree vinegar keybind
keymap.set("n", "-", ":Explore<CR>")

-- Copy relative path
keymap.set("n", "<leader>fp", '<cmd>let @+ = expand("%")<CR>', { desc = "Copy relative Path" })
keymap.set(
  "n",
  "<leader>fP",
  "<cmd>let @+ = join([expand('%'),  line(\".\")], ':')<CR>",
  { desc = "Copy relative Path and current line" }
)

-- Horizontal scroll
keymap.set({ "n", "v" }, "<A-h>", "2zh")
keymap.set({ "n", "v" }, "<A-l>", "2zl")
