" ~/.config/nvim/init.vim

syntax on
filetype plugin indent on


" +-----------------------------------------------------------------+
" |                        General Settings                         |
" +-----------------------------------------------------------------+
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
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set encoding=utf-8
set nospell

" windows specific
if has('win64')
    let &shell='cmd.exe'
endif

" linux specific
if has('unix')
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'
endif


" +-----------------------------------------------------------------+
" |                            Key Remaps                           |
" +-----------------------------------------------------------------+
let mapleader = "\\"
let maplocalleader = "\\"

" remapping escape
inoremap jk <esc>
inoremap kj <esc>
" FIX: add separate mappings for visual, normal mode
" 'gv' brings you back to previous visual selection

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

" edit init.vim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" reload init.vim
nnoremap <leader>rv :source ~/.config/nvim/init.vim<cr>


" +-----------------------------------------------------------------+
" |                              Vim Plug                           |
" +-----------------------------------------------------------------+
call plug#begin('~/.config/nvim/plugged')
source plugs.vim
call plug#end()

source plugins.vim


" +-----------------------------------------------------------------+
" |                          Colour Scheme                          |
" +-----------------------------------------------------------------+
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

"set termguicolors
if has('unix')
    set t_Co=256
endif

colorscheme solarized
set background=light

let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" for when powerline symbols don't work with the above
" source powerline-symbols.vim


" +-----------------------------------------------------------------+
" |                        Filetype-Specific                        |
" +-----------------------------------------------------------------+
au Filetype tex set wrap
au Filetype tex set linebreak " wraps at a word boundary rather than in the middle
au Filetype tex set breakindent " line visually indented (source not affected
au Filetype tex set showbreak=-- " inserts the '--' string before the trailing broken rows
au Filetype tex set spell
au Filetype tex set spelllang=en_ca
au Filetype tex inoremap <c-c> <c-g>u<Esc>[s1z=`]a<C-g>u 
au Filetype tex colorscheme one
au Filetype tex set background=light
au Filetype tex let g:airline_theme='oceanicnextlight'

au Filetype text set wrap
au Filetype text set linebreak " wraps at a word boundary rather than in the middle
au Filetype text set breakindent " line visually indented (source not affected
au Filetype text set showbreak=-- " inserts the '--' string before the trailing broken rows
au Filetype text set spell
au Filetype text set spelllang=en_ca
au Filetype text inoremap <c-c> <c-g>u<Esc>[s1z=`]a<C-g>u

au BufRead,BufNewFile *.stc set filetype=haskell
