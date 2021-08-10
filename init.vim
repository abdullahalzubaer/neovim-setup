set relativenumber
set nu rnu
set mouse=a
set scrolloff=5 "keep five lines
filetype on


"for working with Python start
"https://www.vex.net/~x/python_and_vim.html
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
"for working with python end

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'Raimondi/delimitMate' " ()
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree' "folder structure
Plug 'tpope/vim-commentary' "for commenting gcc gc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale' " For linters make it owrk later
call plug#end()

colorscheme gruvbox
syntax on

" let g:ale_linters = {'python': ['flake8']}
" let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black']}
" let g:ale_fix_on_save = 1

let g:python3_host_prog = "C:\\Users\\gadhamanob\\Anaconda3\\python.exe"


" for splitting the termial and opening it at the bottom - KEY MAP "TE" - the
" command needs to be always in capital letter
" https://github.com/neovim/neovim/issues/5073
set splitbelow
command! -nargs=* TR split | resize 10 | terminal <args> 



" set ruler
