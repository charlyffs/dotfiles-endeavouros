set rnu
set nu
set ruler
set autoindent
set tabstop=4 
set hlsearch
set incsearch
set nocompatible
set linebreak
set paste
set ignorecase
set smartcase
set backspace=indent,eol,start

syntax on

filetype on
filetype indent on

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

hi statusline ctermfg=4 ctermbg=0
hi LineNr term=bold ctermfg=Grey
hi Visual cterm=bold ctermbg=Gray ctermfg=Black

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'hashivim/vim-terraform'

call plug#end()

