set noswapfile
set nobackup
set noundofile

set number
set laststatus=2
set noshowmode
set showcmd
set nowrap

set hlsearch
set incsearch

" set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

syntax on
filetype on
filetype plugin indent on

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
:inoremap kj <Esc>

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme dracula

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
