-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
local dap = require("dap")

lvim.plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox"
  },
  {
    "prettier/vim-prettier",
    build = "npm install"
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

-- lvim.builtin.telescope.

lvim.format_on_save = true

lvim.builtin.lualine.sections = { lualine_c = { 'lsp_progress' }, lualine_x = { 'tabnine' } }


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
  styles = {
    comments = { "italic" },
    conditionals = { "bold" },
    loops = { "bold" },
    keywords = { "bold" },
  },
})

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        -- change `Normal` to the group you want to change
        -- and `#ffffff` to the color you want
        -- see `:h nvim_set_hl` for more options
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#11111b", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2f30", underline = false, bold = true })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1e1e2e", underline = false, bold = true })
      end,
    },
  },
}


lvim.builtin.telescope.defaults.path_display = nil
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "node_modules"
}
lvim.lsp.automatic_servers_installation = false
lvim.lsp.automatic_configuration.skipped_servers = { "tailwindcss-language-server" }
-- vim.opt.showtabline = 0
-- lvim.colorscheme = "gruvbox"
-- require("gruvbox").setup({
--   transparent_background = true,
-- })
lvim.colorscheme = "catppuccin-mocha"
