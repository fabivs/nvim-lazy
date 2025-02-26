return {
  "sindrets/diffview.nvim",
  keys = function()
    return {
      { "<leader>go", "<cmd>DiffviewOpen<cr>", desc = "Git Current Status Diffview" },
      { "<leader>gd", "<cmd>DiffviewFileHistory<cr>", desc = "Git Current Branch Diffview" },
      {
        "<leader>gD",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "Git Current File History Diffview",
      },
    }
  end,
}
