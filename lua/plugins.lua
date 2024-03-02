return require('packer').startup(function(use)

--neovim package manager
use 'wbthomason/packer.nvim'

--tree sitter
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

--manson
use {"williamboman/mason.nvim"}

--nvim barbar
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'

--status bar
--use 'freddiehaddad/feline.nvim'
--use 'nvim-lualine/lualine.nvim'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
--colorscheme
use { "catppuccin/nvim", as = "catppuccin" }

--language server protocol
use 'neovim/nvim-lspconfig'
use 'williamboman/mason-lspconfig.nvim'

--neotree(file manager)
--use 'nvim-neo-tree/neo-tree.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

--float terminal
use 'voldikss/vim-floaterm'

--leader mapper
--use 'spinks/vim-leader-guide'

--auto close bracket
use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}

use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}

use {
  'VonHeikemen/searchbox.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}

--nvim autocomplete 
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

end)
