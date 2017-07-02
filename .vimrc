:set background&
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
"colorscheme wombat256mod
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
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
"Keyboard mappings

" cpp-enhanced-highlight setting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" YouCompleteMe Setting
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
nmap <F2> <ESC>:w<CR>i
" Switch between Vim window splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
