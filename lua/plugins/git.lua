return {
  "dlyongemallo/diffview.nvim",
  keys = function()
    return {
      { "<leader>go", "<cmd>DiffviewOpen<cr>", desc = "Git Current Status Diffview" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close Diffview (if open)" },
      { "<leader>gO", "<cmd>DiffviewFileHistory<cr>", desc = "Git Current Branch Diffview" },
      {
        "<leader>gF",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "Git Current File History Diffview",
      },
    }
  end,
}
