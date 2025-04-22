return {
  "sindrets/diffview.nvim",
  keys = function()
    return {
      { "<leader>go", "<cmd>DiffviewOpen<cr>", desc = "Git Current Status Diffview" },
      { "<leader>gO", "<cmd>DiffviewFileHistory<cr>", desc = "Git Current Branch Diffview" },
      {
        "<leader>gF",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "Git Current File History Diffview",
      },
    }
  end,
}
