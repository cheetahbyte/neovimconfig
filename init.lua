require("remap")
local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.uv.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require("pckr").add({
    {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
    "IogaMaster/neocord",
    {"catppuccin/nvim", as = "catppuccin"},
    "jiangmiao/auto-pairs",
    {"kdheepak/lazygit.nvim", requires = "nvim-lua/plenary.nvim"},
    {"nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
})



require("plugins")
require("theme")

