set nocompatible
so ~/.vim/plugins.vim

syntax enable
colorscheme snazzy
set backspace=indent,eol,start
set linespace=15
set nonumber
set hlsearch
set incsearch
set t_CO=256
set guifont=Menlo:h15
filetype indent on
set smartindent
set expandtab
set shiftwidth=4
set paste
let g:SnazzyTransparent=1

nmap <D-1> :NERDTreeToggle<cr>
nmap <D-p> :CtrlP<cr>
nmap <D-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window= 'top,order:ttb,min:1,max:10,result:10'

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set tabstop=8
set expandtab
set softtabstop=4


if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']


let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }
