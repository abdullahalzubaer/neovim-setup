" set leader key
let g:mapleader = "<Space>"
set relativenumber
set nu rnu
set guicursor=
set mouse=a
set scrolloff=8 "keep five lines
filetype on
syntax on
set autochdir "Automatically change directory
set splitbelow splitright
" copying from vim to windows anywhere text
set clipboard=unnamed
set noshowmode
set backspace=indent,eol,start
set colorcolumn=79 " For setting that vertical line...
set nohlsearch " remove the highlights after searchis done

"for working with Python start
"https://WWW.vex.net/~x/python_and_vim.html
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set encoding=UTF-8
"for working with python end


" setting auto correct globaly
" https://github.com/sedm0784/vim-you-autocorrect/blob/master/doc/vim-you-autocorrect.text
" augroup ILoveCorrections
    " autocmd!
    " autocmd BufEnter * EnableAutocorrect
" augroup END
" Setting autocorrect mode locally in command
" :DisableAutocorrect
" :EnableAutocorrect


" set spellfile = "C:\\Program Files\\Neovim\\Neovim\\share\\nvim\\runtime\\spell\\en.utf-8.spell"
" spell spelllang=en_us



call plug#begin()
" Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes' " Colorscheme
Plug 'Raimondi/delimitMate' " ()
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree' "folder structure
Plug 'tpope/vim-commentary' "for commenting GCC cg
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale' " it worked ! -> displayByAle enable (by setting true) this in schema.json in coc.nvim
Plug 'sedm0784/vim-you-autocorrect' "autocorrect
Plug 'itchyny/lightline.vim' "status bar
Plug 'itchyny/vim-gitbranch' "to show which branch the file is from nothing else.
Plug 'vim-python/python-syntax'
" Plug 'sheerun/vim-polyglot' " better syntax highlight (read that it creates
" conflicts with something - dont use it)
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " better syntax highlightl (didnot like it..)
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'https://github.com/terryma/vim-multiple-cursors' " should be for multiple curosr but need to look into more later to make it work

call plug#end()

" to enable tabnine connection to the server (since i am subscribed to pro
" version of Tabnine (but we can directly use it from coc install (gogle it) Use the following command when
" you open a project.
" TabNine::config

" Some good colorscheme
"  rdark-terminal2
"  afterglow
"  jellybeans
"  hybrid_revers
"  Hybrid
"  alduin ~ gruvbox
"  oceanicnext
"  oceanic_material ~~ gruvbox
"
"  Winner? oceanicnext and gruvbox (so far) and two hybrid and hybrid_material
"  Current winner -> hybrid_material (really cool)
" let g:gruvbox_contrast_dark  = 'soft' "hard, medium, soft
" colorscheme gruvbox

set background=dark
colorscheme hybrid_material
" let g:hybrid_transparent_background = 1
" let g:enable_bold_font = 1


"hybrid_material provids very light lie numbering, that is why I added this one so that I can see the number ! ;)
"two option Grey or DarkGrey, I prefer DarkGrey

highlight LineNr ctermfg=DarkGrey

"Making highlighting better
let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1



"Need this fo pointing where python is that I am using or else shows some
"error in checkhealth
let g:python3_host_prog = "C:\\Users\\gadhamanob\\Anaconda3\\python.exe"



" let g:ale_linters = {'python': ['flake8']}
" let g:ale_linters = {'python': ['flaker']}
"sort for sorting the import statements on save also ;)
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black', 'isort']}
let g:ale_fix_on_save = 1 " formate after save

" Damn I did it at last! no longer that E501 error for longer lines..
" its a milestone :D
" This below will disable it
" https://github.com/dense-analysis/ale/issues/2674
let g:ale_python_flake8_options = '--ignore=E501'

" This is for the lightline
let g:lightline = {
      \ 'colorscheme':'Tomorrow_Night',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }


" some good colorscheme (too damn difficult to choose.
" default
" wombat
" apprentice
" Tomorrow_Night
" Tomorrow_Night_Bright

"Below-> Removing those stupid linters (saying I am doing everything wrong)
let g:syntastic_mode_map = {"mode": "passive"} "https://stackoverflow.com/questions/63234882/how-to-disable-linting-in-vim-no-its-not-ale

" let g:syntastic_python_flake8_args='--ignore=E501'
" Some remaps... "
"------------------------------"


" for splitting the termial and opening it at the bottom - KEY MAP "TR" - the
" command needs to be always in capital letter
" https://GitHub.com/new vim/new vim/issues/5073
" For opening terminal
command! -nargs=* TR split | resize 10 | terminal <args>

" For opening NERD Tree
nnoremap <C-n> :NERDTree<CR>

" For exiting terminal
" <C-[> is another on
tnoremap <Esc> <C-\><C-n>

" Better tab

vnoremap < <gv
vnoremap > >gv

" Better window navigation

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" deleting word forward (in insert mode)
inoremap <C-e> <C-o>de

" Undo previous edit (in normal mode)
nnoremap <C-z> u

" Awesome! Can compile python file by just pressing f9
" https://stackoverflow.com/a/18948530/12946268
" Has other solutions:https: //stackoverflow.com/questions/18948491/running-python-code-in-vim
" Related thing in reddit: https://www.reddit.com/r/neovim/comments/gcxprs/compile_and_run_inside_vim/
autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
