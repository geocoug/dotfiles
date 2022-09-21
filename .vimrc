" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

call plug#begin('~/.vim/plugged')

    Plug 'preservim/nerdtree'
    Plug 'rakr/vim-one'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'frazrepo/vim-rainbow'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}


" OTHER ------------------------------------------------------------ {{{

" All other configurations go here.

" Airline configurations
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L %#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#'
let g:airline_section_a = '%#__accent_bold#%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'
let g:airline_section_warning = ''

" Rainbow bracket config
let g:rainbow_active = 1

" Color scheme

" Syntax highlighting
syntax on

" Enable type file detection
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Relative line number based on cursor position
set relativenumber

" Allow mouse click navigation
set mouse=a

" Set tab width to 4 columns
set tabstop=4

" Set shift width to 4 spaces
set shiftwidth=4

" Convert tabs to spaces
set expandtab

" New lines inherit indentation of previous line
set autoindent

" Search highlighting
set hlsearch

" Ignore case when searching
set ignorecase

" Highlight line currently under cursor
set cursorline

" Highlight cursor line underneath the cursor vertically
set cursorcolumn

" Line numbers on sidebar
set number

" Spellchecking
set spell

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Commands to save in history. Default=20
set history=1000

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave similar to Bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}

