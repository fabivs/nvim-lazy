-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_remember_window_size = true

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  -- Zoom in
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.1)
  end, { desc = "Neovide zoom in" })

  -- Zoom out
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.1)
  end, { desc = "Neovide zoom out" })

  -- Reset zoom
  vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = 1.0
  end, { desc = "Neovide reset zoom" })

  -- Clipboard copy/paste with Ctrl+Shift
  -- Copy (visual mode)
  vim.keymap.set("v", "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })

  -- Paste (normal mode)
  vim.keymap.set("n", "<C-S-v>", '"+P', { desc = "Paste from system clipboard" })

  -- Paste (visual mode) - replace selection
  vim.keymap.set("v", "<C-S-v>", '"+P', { desc = "Paste from system clipboard" })

  -- Paste (command-line mode)
  vim.keymap.set("c", "<C-S-v>", "<C-R>+", { desc = "Paste from system clipboard" })

  -- Paste (insert mode)
  vim.keymap.set("i", "<C-S-v>", '<ESC>"+Pli', { desc = "Paste from system clipboard" })

  -- Paste (terminal mode)
  vim.keymap.set("t", "<C-S-v>", '<C-\\><C-n>"+Pi', { desc = "Paste from system clipboard" })
end
