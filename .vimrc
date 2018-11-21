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
colorscheme molokai
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
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'
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

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Tagbar
nmap <F12> :TagbarToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
nmap <F2> <ESC>:w<CR>i
" Switch between Vim window splits
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
-
