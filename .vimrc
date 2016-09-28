set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup',{'rtp':'vim/'}
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'

"All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

:filetype plugin on
:syntax on

"let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

"relative linenumbers
set relativenumber

"highlight cursor and column
set cursorline
set cursorcolumn

"let $PYTHONPATH='/usr/local/lib/python3.5/site-packages'
set rtp+=/usr/local/lib/python3.5/site-packages/powerline/bindings/vim

set laststatus=2

"random
set backspace=2		"Makes backspace function like other programs
set showmatch 		"Highlights matching brackets
set cc=80               "Ruler for 80th column

"tabs
set expandtab
"set tabstop=4		"Spaces instead of tab
"set shiftwidth=4
set smarttab
"set shiftwidth=4

"indenting
set autoindent
set number

set ruler
set hlsearch


"Autocomplete rules
inoremap (     ()<Left>
inoremap [     []<Left>

"Automatically completes curly brackes
inoremap {     {}<Left>
