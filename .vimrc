call plug#begin()

Plug 'preservim/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'voldikss/vim-browser-search'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lervag/vimtex'
Plug 'voldikss/vim-translator'
Plug 'sirver/ultisnips'

call plug#end()

"Themes and setting for airline
"let g:airline_theme='papercolor' " <theme> is a valid theme name
"Set default color scheme
colorscheme gruvbox
set bg=dark
"""

"NERDTree options
"Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif
"""

"Set line number
set number
"""

"To set color colum for line length
set colorcolumn=80
"""

"Enable some mouse funtions
set mouse=a
"""

"Clipboards
set clipboard+=unnamedplus
"""

"""
" To search in google
nmap <silent> <Leader>s <Plug>SearchNormal
vmap <silent> <Leader>s <Plug>SearchVisual
"""

"To latex
filetype plugin indent on
syntax enable
autocmd FileType tex set colorcolumn=110
autocmd FileType tex set tw=110
autocmd FileType tex set nocursorline
"autocmd FileType tex set spell spelllang=es_es
autocmd FileType tex set spell spelllang=en_us
autocmd FileType tex set bg=light
autocmd FileType tex colorscheme PaperColor
"autocmd FileType tex set AirlineToggle
"let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_syntax_conceal_disable = 1

"To Translate
"let g:translator_target_lang='es'
let g:translator_target_lang='en'
let g:translator_windows_type='preview'
"To show in cmdline
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
"To show in window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
"To replace text
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV

"General options
"set relativenumber
set cursorline
set encoding=utf-8
"set conceallevel=0
set hidden
nnoremap <Leader>b :ls<CR>:b<Space>
set autoread
" To snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
set fillchars+=vert:\ 
