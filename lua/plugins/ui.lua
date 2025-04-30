--- @param trunc_width number trunctates component when screen width is less then trunc_width
--- @param trunc_len number truncates component to trunc_len number of chars
--- @param hide_width number hides component when window width is smaller then hide_width
--- @param no_ellipsis boolean whether to disable adding '...' at end after truncation
--- return function that can format the component accordingly
local function trunc(trunc_width, trunc_len, hide_width, no_ellipsis)
  return function(str)
    local win_width = vim.fn.winwidth(0)
    if hide_width and win_width < hide_width then
      return ""
    elseif trunc_width and trunc_len and win_width < trunc_width and #str > trunc_len then
      return str:sub(1, trunc_len) .. (no_ellipsis and "" or "...")
    end
    return str
  end
end

return {
  -- got this incline config from devaslife, removed the color
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    config = function()
      require("incline").setup({
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- truncate branch length
      table.remove(opts.sections.lualine_b)
      table.insert(opts.sections.lualine_b, {
        "branch",
        fmt = trunc(1000, 12, 80, false),
      })
      opts.options = {
        section_separators = { "|", "|" }, -- Vertical bar as separator
        component_separators = { "|", "|" }, -- Vertical bar as separator
      }
    end,
  },
  {
    "folke/noice.nvim",
    -- Classic commandline position instead of pop-up
    opts = {
      cmdline = {
        view = "cmdline", -- moves command line to bottom
      },
      presets = { command_palette = false }, -- tab completions for commandline don't pop-up at top
    },
  },
}
