set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set ambiwidth=double
set smartindent
set mouse=

"Yank to Clipboard
if has("mac")
  set clipboard=unnamed
elseif has("unix")
  set clipboard+=unnamedplus
endif

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'itchyny/lightline.vim'
  Plug 'vim-denops/denops.vim'
  Plug 'Shougo/ddc.vim'
  Plug 'Shougo/ddc-source-around'
  Plug 'Shougo/ddc-filter-matcher_head'
  Plug 'Shougo/ddc-filter-sorter_rank'
  Plug 'Shougo/ddc-source-mocword'
  Plug 'Shougo/ddc-ui-native'
call plug#end()

"ddc
call ddc#custom#patch_global('ui', 'native')
call ddc#custom#patch_global('sources', ['around', 'mocword'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ 'mocword': { 'mark': 'mocword' },
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })

" <TAB> completion in ddc
inoremap <expr> <TAB>
      \ pumvisible() ? '<C-n>' :
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
      \ '<TAB>' : ddc#map#manual_complete()

" <S-TAB> completion in ddc
inoremap <expr> <S-TAB> pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()

"Python
let g:python3_host_prog='/home/enokawa/.pyenv/shims/python'
