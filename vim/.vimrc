set noswapfile
set nobackup
set noundofile

set number
set laststatus=2
set noshowmode
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

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
packadd! dracula
colorscheme dracula
