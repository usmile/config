" syntax
syntax enable
syntax on

" color scheme
colo desert 

" line number
set nu

" vi compatible
set nocompatible

" auto indent 
set autoindent
set cindent
set smartindent

" search setting
set hlsearch
set incsearch

" comand line height 
set cmdheight=1

" tab setting
set tabstop=4          " view tab size
set expandtab          " 
set softtabstop=4      " back size
set shiftwidth=4       " indent size

" copy
set clipboard=unnamed 

" cursor highlight
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=blue guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=blue guibg=darkred guifg=white


" set no backup
set nobackup

" show the matched brackets
set showmatch

" auto back to last time position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"python auto complete
filetype plugin on
"let g:pydiction_location = '~/.vim/pydiction/complete-dict'
"







set nofoldenable
set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
"
Bundle 'gmarik/vundle'
Bundle "Lokaltog/vim-powerline"
" Bundle "vim-markdown"
 
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
Bundle 'vim-markdown'


" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

set laststatus=1



"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
let g:Powerline_symbols='unicode'
 "
