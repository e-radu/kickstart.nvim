require 'keymaps'
require 'options'
require 'misc'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'plugins.neo-tree',
  require 'plugins.colorscheme',
  require 'plugins.lazygit',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.notify',
  require 'plugins.noice',
  require 'plugins.transparent',
  require 'plugins.copilot',
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.whichkey',
  require 'plugins.lsp',
  require 'plugins.autocompletion',
  require 'plugins.comment',
  require 'plugins.blankline',
  require 'plugins.alpha',
  -- require 'plugins.gitsigns',
  -- require 'plugins.obsidian',
  -- require 'plugins.trouble'
})

-- vim: ts=8 sts=2 sw=2 et
