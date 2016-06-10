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
set cursorline
hi CursorLine   cterm=NONE ctermbg=lightgray guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=blue guibg=darkred guifg=white


" set no backup
set nobackup

" show the matched brackets
set showmatch

" auto back to last time position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
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
