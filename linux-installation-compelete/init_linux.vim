" set leader key
let g:mapleader = "<Space>"
set relativenumber
set nu rnu
" set guicursor=
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
set hls
"for working with python end


" Autocorrect for text
" --------------------

" setting auto correct globaly
" https://github.com/sedm0784/vim-you-autocorrect/blob/master/doc/vim-you-autocorrect.text

"augroup ILoveCorrections
    " autocmd!
    " autocmd BufEnter * EnableAutocorrect
" augroup END


" Setting autocorrect mode locally in command
" :DisableAutocorrect
" :EnableAutocorrect

" set spellfile = "C:\\Program Files\\Neovim\\Neovim\\share\\nvim\\runtime\\spell\\en.utf-8.spell"
" spell spelllang=en_us
" ---------------------


call plug#begin()
" Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes' " Colorscheme
Plug 'Raimondi/delimitMate' " ()
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree' "folder structure
Plug 'tpope/vim-commentary' "for commenting GCC cg
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "It is supposed to do the muiltiple cursor thing that I love
Plug 'sainnhe/gruvbox-material' " gruvbox but with less contrasty :)
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }  "Markdown Preview for (Neo)vim . https://github.com/iamcco/markdown-preview.nvim


call plug#end()

" to enable tabnine connection to the server (since i am subscribed to pro
" version of Tabnine (but we can directly use it from coc install (gogle it) Use the following command when
" you open a project
" TabNine::config
"
"

"
"######Begining of theme configuration#######

" --- configuration start for gruvbox-material (this is suppposed to be liess
"  contrasty (copied from the readme text of gruvbox_material
"----- Another form of gruvbox from gruvbox-material -- instruction below
"
" For gruvbox_material to be activated:
" comment out (i.e. remove comment) from mark->1 to mark->2
"
" For gruvbox_material corresponding lighline comment out (i.e. remove
" comment) from mark->3 to mark->4

" " Comment (i.e. make these code ineffective) from here to get hybrid_material original that I used to like

" mark->1
" Important!!
" if has('termguicolors')
"   set termguicolors
" endif

" " For dark version.
" set background=dark

" " For light version.
" " set background=light

" " Set contrast.
" " This configuration option should be placed before `colorscheme gruvbox-material`.
" " Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'medium'

" " For better performance
" let g:gruvbox_material_better_performance = 1

" colorscheme gruvbox-material
" mark->2

" ---configuration end for gruvbox-material
"

" Comment out (i.e. put them in comment)
" upto above to get hubrid_material original that I used to like



"
"
"
" Note
" you can change the theme by writing :colorscheme
" gruvbox/gruvbox-material
"
" if you want original gruvbox uncomment below to line
" i.e. the gruvbox with original contrast
"
" let g:gruvbox_contrast_dark  = 'soft' "hard, medium, soft
" colorscheme gruvbox
"
"
" To get the old hybrid_material
"
" If you want  hybrid_material uncomment below two line
" and also comment out everything that is related to gruvbox_material theme
" (mark->1 to mark->2) also do not forget
" to comment out the lightline below that is hardcoded for gruvbox_material.
" which is from mark->3 to mark-4. If you
" remove it then you will get the hybrid_material lightline (that I had
" before) or else even if
" you activate hubrid_material you wont get the lightline that is for
" hybrid_material but for only gruvbox_material. Do not be afraid
" when you do :source% and see a dark background, because when you
" restart your beautiful neovim you will get back the less contrasty
" background :)
"
"

set background=dark
colorscheme hybrid_material

let g:hybrid_transparent_background = 1
let g:enable_bold_font = 1

"hybrid_material provids very light lie numbering, that is why I added this one so that I can see the number ! ;)
"two option Grey or DarkGrey, I prefer DarkGrey

highlight LineNr ctermfg=DarkGrey

"Making highlighting better
let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1"

"
"



"Need this fo pointing where python is that I am using or else shows some
"error in checkhealth
" let g:python3_host_prog = "C:\\Users\\gadhamanob\\Anaconda3\\python.exe"



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


" This is for the lightline that is using hubrid_material
" some another colorscheme Tomorrow_Night
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



"####lightline for gruvbox-material start###
" mark -> 3
" let g:lightline = {
"       \ 'colorscheme':'gruvbox_material',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'gitbranch#name'
"       \ },
"       \ }

" :call lightline#init()
" :call lightline#colorscheme()

" mark -> 4
" ####lightline for gruvbox-material end####



" some good colorscheme (too damn difficult to choose.
" default
" wombat
" apprentice
" Tomorrow_Night
" Tomorrow_Night_Bright

"modeBelow-> Removing those stupid linters (saying I am doing everything wrong)
let g:syntastic_mode_map = {"mode": "passive"} "https://stackoverflow.com/questions/63234882/how-to-disable-linting-in-vim-no-its-not-ale

" let g:syntastic_python_flake8_args='--ignore=E501'









" ####### Some remaps... #######


" for splitting the termial and opening it at the bottom - KEY MAP "TR" - the
" command needs to be always in capital letter
" https://GitHub.com/new vim/new vim/issues/5073
" For opening terminal
command! -nargs=* TR split | resize 10 | terminal <args>

" For opening NERD Tree
" Thats how it works! - > in visual mode ctrl+f

nnoremap <C-f> :NERDTree<CR>

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

" Awesome! Can compile python file by just pressing <F10>
" https://stackoverflow.com/a/18948530/12946268
" Has other solutions:https: //stackoverflow.com/questions/18948491/running-python-code-in-vim
" Related thing in reddit: https://www.reddit.com/r/neovim/comments/gcxprs/compile_and_run_inside_vim/
autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>


" Clear highlight on pressing
nnoremap <esc><esc> :noh<return><esc>
