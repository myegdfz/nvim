return require('packer').startup(function()
  -- package manager
  use 'wbthomason/packer.nvim'

  -- lua functions
  use 'nvim-lua/plenary.nvim'
  -- popup windows implementation
  use 'nvim-lua/popup.nvim'
  -- icons for other plugins
  use 'kyazdani42/nvim-web-devicons'
  -- termial integration
  use 'akinsho/nvim-toggleterm.lua'

  -- auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  -- snippet support
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- lsp support
  use 'neovim/nvim-lspconfig'
  -- lsp UI staffs
  use 'tami5/lspsaga.nvim'
  
  -- java lsp
  use 'mfussenegger/nvim-jdtls'
  -- dap support
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  -- treesitter config
  use 'nvim-treesitter/nvim-treesitter'
  -- show scope in code with treesitter
  use 'SmiteshP/nvim-gps'
  -- auto pairs
  use 'windwp/nvim-autopairs'
  -- auto tags
  use 'windwp/nvim-ts-autotag'
  -- surround with
  use 'blackCauldron7/surround.nvim'
  -- comment
  use 'numToStr/Comment.nvim'
  -- indent
  use 'lukas-reineke/indent-blankline.nvim'

  -- color scheme
  use 'NTBBloodbath/doom-one.nvim'
  -- status line
  use 'windwp/windline.nvim'
  -- clickable buffer line
  use 'akinsho/nvim-bufferline.lua'
  -- git integration
  use 'lewis6991/gitsigns.nvim'
  -- which-key
  use 'folke/which-key.nvim'


  -- file explorer
  use 'kyazdani42/nvim-tree.lua'
  -- fuzzy finder
  use 'nvim-telescope/telescope.nvim'
  -- media file preview extension for telescope
  use 'nvim-telescope/telescope-media-files.nvim'
  
  -- formatter
  use ({
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('null-ls-main')
    end,
  })
end)
