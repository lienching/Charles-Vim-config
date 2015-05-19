" VIM Config File

"set encoding to UTF-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility
set nocompatible
"use intelligent indentation for C
set smartindent
"config tabwidth and insert space instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab
"wrap line at 120 chars. 
set textwidth=120
"turn syntax highlighting on
set t_Co=256
syntax on
colorscheme wombat256mod
"turn line numvers on
set nu
"highlight matching braces
set showmatch
"intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
"Set record status
set laststatus=2
"Set not mode show
set noshowmode

"Vundle Setting
filetype off "required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin List
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
call vundle#end()
filetype plugin indent on
"Keyboard mappings

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
nmap <F2> <ESC>:w<CR>i

