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
set encoding=UTF-8
"for working with python end

" set laststatus=0

syntax on
" set spellfile = "C:\\Program Files\\Neovim\\Neovim\\share\\nvim\\runtime\\spell\\en.utf-8.spl"
" spell spelllang=en_us
" set spell


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'Raimondi/delimitMate' " ()
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree' "folder structure
Plug 'tpope/vim-commentary' "for commenting gcc gc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale' " it worked ! -> displayByAle enable (by setting true) this in schema.json in coc.nvim
call plug#end()

colorscheme gruvbox
set background=dark
"Need this fo pointing where python is that I am using or else shows some
"error in checkhealth
let g:python3_host_prog = "C:\\Users\\gadhamanob\\Anaconda3\\python.exe"


let g:ale_linters = {'python': ['flake8']}
"isort for sorting the import statements on save also ;)
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black', 'isort']}
let g:ale_fix_on_save = 1


" set ruler
set clipboard=unnamed



" for splitting the termial and opening it at the bottom - KEY MAP "TR" - the
" command needs to be always in capital letter
" https://github.com/neovim/neovim/issues/5073
set splitbelow


" Some remaps... "
"------------------------------"
" For opening terminal
command! -nargs=* TR split | resize 10 | terminal <args>
" For openeing NERDTree
nnoremap <C-n> :NERDTree<CR>
" For exiting terminal
tnoremap <Esc> <C-\><C-n>