-- Basic editing
vim.cmd[[au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape']]
vim.cmd[[au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock']]

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard:append("unnamedplus")

vim.keymap.set("n", "x", '"_x')

-- Installing the plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
  } 
})

-- Appearance
vim.cmd[[colorscheme tokyonight]]

-- File explorer
require("nvim-tree").setup({
  view = {
    width = 30,
    signcolumn = "yes",
  },
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "├",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        folder_arrow = false
      }
    }
  },
  filters = {
    dotfiles = false,
  },
})
vim.api.nvim_create_user_command("Exp", function()
    vim.cmd[[:NvimTreeToggle]]
end, {})

-- Git diff
require('gitsigns').setup()

-- LSP
local lspconfig = require("lspconfig")
lspconfig.pyright.setup {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
  }
}
lspconfig.tsserver.setup {}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
  end
})
vim.cmd[[:set completeopt-=preview]]

vim.keymap.set("i", "<c-z>", "<c-x><c-o>", { silent = true })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })

