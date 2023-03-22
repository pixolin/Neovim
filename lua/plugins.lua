local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'windwp/nvim-autopairs' -- Autopair brackets, quotes…

  use {
    'folke/which-key.nvim', -- Display key options
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
      'nvim-telescope/telescope.nvim',
      requires = {'nvim-lua/plenary.nvim'}
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'

  use 'lewis6991/gitsigns.nvim'

end)
