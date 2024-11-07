-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  { 'rafi/awesome-vim-colorschemes' },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker",
    }
  },
  { 'windwp/nvim-autopairs' },
  {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {'hrsh7th/cmp-nvim-lsp'}, 
  {'hrsh7th/cmp-buffer'}, 
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'}, 
  {'hrsh7th/nvim-cmp'},
  {'neovim/nvim-lspconfig'},
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

-- Rust
  {"simrat39/rust-tools.nvim"},

-- Themes
  { 'sainnhe/sonokai' },
  { 'yonlu/omni.vim' },
  { 'ray-x/aurora' },
  { 'tanvirtin/nvim-monokai' },
  { 'Shatur/neovim-ayu' },
})
