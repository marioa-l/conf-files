call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'voldikss/vim-browser-search'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'

call plug#end()

" NEERD Tree setting
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""

" Indent Line
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
""""""""""""""""""""""""""""""

" Deoplete and autocomplete settings
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
""""""""""""""""""""""""""""""

" Global Settings
colorscheme gruvbox
set number
"set colorcolumn=80
set clipboard^=unnamed,unnamedplus
set splitbelow
nmap <silent> <Leader>s <Plug>SearchNormal
vmap <silent> <Leader>s <Plug>SearchVisuaL
map <F8> :TagbarToggle<CR>
let g:tagbar_position='left'
set textwidth=80
set wrap linebreak
set mouse=a
