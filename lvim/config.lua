-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
require "user.emmet-ls"

local dap = require("dap")

lvim.plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  { "joshdick/onedark.vim" },
  { "AndrewRadev/tagalong.vim" },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox"
  },
  { 'codota/tabnine-nvim', build = "./dl_binaries.sh" },
  { "jlcrochet/vim-razor" }
}

lvim.transparent_window = true

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/bin/netcoredbg',
  args = { '--interpreter=vscode' }
}
dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

lvim.format_on_save = true
-- lvim.builtin.lualine.sections = { lualine_c = { 'lsp_progress' }, lualine_x = { 'tabnine' } }

require('tabnine').setup({
  disable_auto_comment = true,
  accept_keymap = "<C-u>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
  log_file_path = nil, -- absolute path to Tabnine log file
})

require("gruvbox").setup({
  transparent_background = true,
})

require("catppuccin").setup({
  transparent_background = true,
  no_italic = false,
  no_bold = false,
  styles = {
    comments = { "italic" },
    conditionals = { "bold" },
    keywords = { "bold" },
  },
})

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#11111b", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2f30", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1c21", underline = false, bold = true })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1e1e2e", underline = false, bold = true })
      end,
    },
  },
}


lvim.builtin.telescope.defaults.path_display = nil
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "node_modules"
}
lvim.lsp.installer.setup.automatic_installation = false
vim.opt.relativenumber = true

-- lvim.colorscheme = "gruvbox"
lvim.colorscheme = "catppuccin-mocha"
-- lvim.colorscheme = "onedark"

-- LINTING

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
-- }

-- PRETTIER

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettierd",
    filetypes = { "javascript", "javascriptreact", "html", "json", "yaml", "typescript", "typescriptreact" },
  },
}
