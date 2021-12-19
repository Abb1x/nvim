set clipboard=unnamedplus

call plug#begin(stdpath('data') . '/plugged')

Plug 'Olical/aniseed'
Plug 'famiu/feline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/dashboard-nvim'

Plug 'ray-x/lsp_signature.nvim'

Plug 'kristijanhusak/orgmode.nvim'


Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'folke/todo-comments.nvim'
Plug 'folke/which-key.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'github/copilot.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ful1e5/onedark.nvim'

call plug#end()



let g:aniseed#env = {'compile' : v:true, 'module': 'dotfiles.init'}
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" This didn't work using fennel for a certain reason.

lua << EOF

require('nvim-tree').setup()
require('orgmode').setup()
require('which-key').setup()
require('todo-comments').setup()

local g = vim.g

vim.opt.fillchars = { eob = " " }

g.completion_chain_complete_list = {
  org = {
    { mode = 'omni'},
  },
}

vim.cmd[[autocmd FileType org setlocal iskeyword+=:,#,+]]

g.dashboard_custom_section = {
   a = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
   b = { description = { "  Recents                   SPC f o" }, command = "Telescope oldfiles" },
   c = { description = { "  Find Word                 SPC f w" }, command = "Telescope live_grep" },
   d = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
   e = { description = { "  Bookmarks                 SPC b m" }, command = "Telescope marks" },
   f = { description = { "  Load Last Session         SPC l  " }, command = "SessionLoad" },
}


EOF

au BufNewFile,BufRead,BufReadPost *.ku set syntax=kansuu
