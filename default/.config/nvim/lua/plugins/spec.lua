return {
  { 'neovim/nvim-lspconfig' }, -- Configurations for Nvim LSP
  { 'gruvbox-community/gruvbox' }, -- Colortheme
  -- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
  { 'hrsh7th/nvim-cmp' }, -- Autocompletion plugin
  { 'hrsh7th/cmp-nvim-lsp' }, -- LSP source for nvim-cmp
  { 'saadparwaiz1/cmp_luasnip' }, -- Snippets source for nvim-cmp
  { 'L3MON4D3/LuaSnip' }, -- Snippets plugin
  { 'nvim-telescope/telescope.nvim', opts = {version = '0.1.8', dependencies = { {'nvim-lua/plenary.nvim'} } } },
  { 'tpope/vim-fugitive' }, -- git integration
  { 'airblade/vim-gitgutter' }, -- git integration
  -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#lazynvim
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "templ" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
      })
    end
  },
}
