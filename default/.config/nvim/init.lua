-- https://github.com/wbthomason/packer.nvim (package manager)
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- mkdir ~/.config/nvim/lua/
-- Then you can write your plugin specification in Lua, e.g. (in ~/.config/nvim/lua/plugins.lua):
require("config.lazy")
require('options')
require('keymaps')
require('colors')
require('autocmd')
require('nvim-lspconfig-config')
require('telescope-config')
