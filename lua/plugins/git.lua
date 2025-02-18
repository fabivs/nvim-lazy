return {
  "sindrets/diffview.nvim",
  keys = function()
    return {
      { "<leader>go", "<cmd>DiffviewOpen<cr>", desc = "Git Current Status Diff" },
      { "<leader>gd", "<cmd>DiffviewFileHistory<cr>", desc = "Git Current Branch Diff" },
      {
        "<leader>gD",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "Git Current File Diff",
      },
    }
  end,
}
