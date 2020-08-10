syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=utf-8

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

if has('unix')
    set t_Co=256
endif

set spell
set spelllang=en_ca
inoremap <C-c> <C-g>u<Esc>[s1z=`]a<C-g>u

let mapleader = ","

" ctrl-d in insert mode deletes the current line
inoremap <C-d> <C-o>dd
" ctrl-p in insert mode puts the yanked test ('gp' moves cursor to end)
inoremap <C-p> <ESC>gpkA

" \k clears search highlight
nnoremap \k :let<space>@/=""<CR>
" '==' formats indent, and moves back to previous location
nnoremap == gg=G``
" '=i' sets light background, like 1 (on)
nnoremap =i :set<space>background=light<CR>
" '=o' sets dark background, like 0 (off)
nnoremap =o :set<space>background=dark<CR>
" '=p' toggles numbering, like 'put numbers'
nnoremap =p :set<space>nu!\|set<space>rnu!<CR> 
" <space> sets to toggle expanding folds
nnoremap <space> za

nnoremap <leader>ev :vsplit ~/.vimrc<cr>

" OBSOLETE
" ctrl-shift-u in insert mode UPPERCASES the current word
" inoremap <C-S-u> <esc>bvwUa
" ctrl-shift-u in normal mode UPPERCASES the current word 
" nnoremap <C-S-u> bvwU
"   --> ctrl and ctrl-shift are the same
" 

call plug#begin('~/.vim/plugged')

" general vim:
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
"plug junegunn/limelight <---

" colour schemes:
Plug 'jcherven/jummidark.vim' " bright purple
Plug 'mhartington/oceanic-next' " light mode has poor highlight contrast
Plug 'drewtempelmeyer/palenight.vim'
Plug 'crusoexia/vim-monokai'
" pink:
Plug 'nightsense/strawberry'
Plug 'sts10/vim-pink-moon'
" light and dark:
Plug 'morhetz/gruvbox' " REAL yellow
Plug 'NLKNguyen/papercolor-theme' " wack colours, dark kinda ugly
Plug 'rakr/vim-one' " relatively better
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
" airline themes:
Plug 'vim-airline/vim-airline-themes'

" baba's:
Plug 'dylnmc/novum.vim'
Plug 'jacoborus/tender.vim'

" LaTeX:
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

" racket:
Plug 'wlangstroth/vim-racket'

" haskell:
Plug 'neovimhaskell/haskell-vim'
Plug 'urso/haskell_syntax.vim'

call plug#end()

" set termguicolors
colorscheme nord
set background=dark

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsEditSplit = "vertical"


let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'


" filetype specific
au Filetype tex set wrap
au Filetype tex set linebreak " wraps at a word boundary rather than in the middle
au Filetype tex set breakindent " lien visually indented (source not affected
au Filetype tex set showbreak=-- " inserts the '--' string before the trailing broken rows
" au Filetype tex set fem=indent

au Filetype text set wrap
au Filetype text set linebreak " wraps at a word boundary rather than in the middle
au Filetype text set breakindent " lien visually indented (source not affected
au Filetype text set showbreak=-- " inserts the '--' string before the trailing broken rows

au BufRead,BufNewFile *.stc set filetype=haskell
