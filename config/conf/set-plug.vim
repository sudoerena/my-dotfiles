" +-----------------------------------------------------------------+
" |                         Plugin-Specific                         |
" +-----------------------------------------------------------------+
" 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" for older versions of neovim
let g:vimtex_version_check = 0

" 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = "context"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'MySnips']

" 'jpalardy/vim-slime'
let g:slime_target = "tmux"

" 'iamcco/markdown-preview.nvim'
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_browser = 'firefox'
" this seems to help load the preview in firefox
"   when :MarkdownPreview doesn't work
function! g:LoadFF(url)
    ":!export DISPLAY=:0
    :silent exe ":!firefox" a:url
    ":echo a:url
endfunction
let g:mkdp_browserfunc = 'g:LoadFF'

" 'preservim/nerdtree'
nnoremap <silent> <C-K><C-B> :NERDTreeToggle<CR>
augroup nerdtree_open
    autocmd!
    autocmd VimEnter *NERDTree | wincmd p
augroup END
