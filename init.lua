-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Gruvbox hotfix (temporary)
vim.api.nvim_set_hl(0, "SnacksPickerDir", { link = "GruvboxGray" })
vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { link = "GruvboxGray" })
vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { link = "GruvboxGray" })
