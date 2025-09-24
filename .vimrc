call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'

call plug#end()

"Themes and setting for airline
let g:airline_theme='papercolor' " <theme> is a valid theme name
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

"General options
set relativenumber
set cursorline
set encoding=utf-8
set hidden
nnoremap <Leader>b :ls<CR>:b<Space>
set autoread
