colorscheme koehler

"--------------------------------------------------------------------
"   HIGHLIGHTING AND SYNTAX
"--------------------------------------------------------------------
set background=dark             " Use a dark background by default
syntax on                       " Enable syntax highlighting
set t_Co=256                    " Allow vim to display all colours
set showmatch                   " Highlight matching parentheses
"Uncomment the following line if you're using Windows PowerShell or
"Windows Terminal and terminal colors are not what you expect
"set termguicolors

"--------------------------------------------------------------------
"   INDENTATION
"--------------------------------------------------------------------
set tabstop=8                   " Set the number of visual spaces per tab
set softtabstop=4               " Set the number of spaces a tab counts as
set expandtab                   " Write tabs as spaces
set autoindent                  " Turn on auto-indentation
set shiftwidth=4                " Set the number of columns to indent with reindent operations
filetype indent on              " Allow loading of language specific indentation

"--------------------------------------------------------------------
"   COLOUR COLUMN
"--------------------------------------------------------------------
"set colorcolumn=81              " Create a column at the 81 character line
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

"--------------------------------------------------------------------
"   MISCELLANEOUS
"--------------------------------------------------------------------
set number relativenumber                      " Show line numbers
set wildmenu                    " Turn on the autocomplete menu
set mouse=a                     " Enable mouse support
set ruler                       " Display the ruler in the bottom right corner
" set cursorline                  " Highlight the current line
set backspace=indent,eol,start  " Allow backspace to work across lines
set foldmethod=syntax
set foldlevelstart=99
set virtualedit=onemore " Allow a virtual cursor to sit past end of line

" -------------------------------------------------------
"----------- Line wrapping ------------------------------
"" ------------------------------------------------------
set wrap linebreak " Enable wrapping; don't split words
set whichwrap+=<,>,h,l " Let r/l arrows wrap over line edges

" Plugin stuff, setup when I did vimtex
filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype indent on      " load file-specific indentation
set encoding=utf-8
let mapleader = '\'

" Use Zathura as the VimTeX PDF viewer
let g:vimtex_view_method = 'zathura'

" Don't open QuickFix for warning messages if no errors are present
let g:vimtex_quickfix_open_on_warning = 0
