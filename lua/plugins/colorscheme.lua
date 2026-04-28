return {
  -- add colorscheme
  { "rebelot/kanagawa.nvim" },

  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
