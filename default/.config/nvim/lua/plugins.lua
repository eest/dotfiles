-- https://github.com/neovim/nvim-lspconfig#install
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'preservim/nerdtree' -- File browser window
  use 'morhetz/gruvbox' -- Colortheme
  use 'ryanoasis/vim-devicons' -- Always load the vim-devicons as the very last one.
  -- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
