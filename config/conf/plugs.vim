" +-----------------------------------------------------------------+
" |                              Vim Plug                           |
" +-----------------------------------------------------------------+
" general vim:
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vader.vim'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-endwise' " check if you use this
Plug 'preservim/nerdtree'

" tmux/workflow
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime', { 'branch': 'main' }
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'airblade/vim-gitgutter'

" colour schemes:
Plug 'mhartington/oceanic-next' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
" light and dark:
Plug 'morhetz/gruvbox' 
Plug 'NLKNguyen/papercolor-theme' 
Plug 'rakr/vim-one' 
Plug 'maxmx03/solarized.nvim'
Plug 'humanoid-colors/vim-humanoid-colorscheme', { 'branch': 'main' }
Plug 'junegunn/seoul256.vim'
" airline themes:
Plug 'vim-airline/vim-airline-themes'

" LaTeX:
Plug 'lervag/vimtex'

" racket:
Plug 'wlangstroth/vim-racket'
Plug 'gokcehan/vim-opex'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'

" haskell:
Plug 'neovimhaskell/haskell-vim'
Plug 'urso/haskell_syntax.vim'

" json:
Plug 'elzr/vim-json'
