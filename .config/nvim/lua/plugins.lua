local execute = vim.api.nvim_command

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local compile_path = install_path .. '/plugin/packer_compiled.lua'
local is_installed = vim.fn.empty(vim.fn.glob(install_path)) == 0

if not is_installed then
  if vim.fn.input('Install packer.nvim? y/N' == 'y') then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute('packadd packer.nvim')
    print('Installed packer.nvim.')
    is_installed = 1
  end 
end

--Packer commands
vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
vim.cmd [[command! PC PackerCompile]]
vim.cmd [[command! PS PackerStatus]]
vim.cmd [[command! PU PackerSync]] 

local packer = nil
if not is_installed then return end
if packer == nil then
  packer = require('packer')
  packer.init({
    compile_path = compile_path
  })
end

local use = packer.use

use 'wbthomason/packer.nvim'

-- General
-- use {'kyazdani42/nvim-web-devicons'}
use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
use {'tpope/vim-fugitive'}
use {'tpope/vim-surround'}
use {'tpope/vim-sleuth'}
use {'tomtom/tcomment_vim'}
use {'neovim/nvim-lspconfig'}

-- Treesitter
use {'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
}

-- Themes
use {'overcache/NeoSolarized'}
use {'Mofiqul/dracula.nvim'}

-- Fuzzy Search
use {
  'nvim-telescope/telescope.nvim',
  requires = {'nvim-lua/plenary.nvim'}
}

-- Completion
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/cmp-nvim-lua'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/nvim-cmp'


require('plugins/lualine')
require('plugins/devicons')
require('plugins/treesitter')
require('plugins/lspconfig')
require('plugins/telescope')
require('plugins/cmp')
