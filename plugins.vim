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
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'MySnips']

" 'jpalardy/vim-slime'
let g:slime_target = "tmux"

