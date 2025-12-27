-- init.lua (minimal bootstrap)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- load core settings
require('core.options')
require('core.keymaps')
require('core.autocmds')

-- setup lazy.nvim and import modular plugin specs under lua/custom/plugins/*.lua
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- import ALL plugin specs from lua/custom/plugins/*.lua
  { import = 'plugins'},
  { import = 'custom.plugins' },
}, {
  ui = { border = 'rounded' },
})
