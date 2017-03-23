"Added pathogen (see http://stevelosh.com/blog/2010/09/coming-home-to-vim/)
filetype off
"call pathogen#infect()
filetype plugin indent on
set nocompatible
set modelines=0

" Setting tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Make things better
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set number
set undofile

"Long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"Syntax on
syntax on

"Adding execute python with F9 when filetype is python
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"Removing backup files
set nobackup
set nowritebackup
set noundofile
execute pathogen#infect()
call pathogen#helptags()

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Remap for navigating buffers
map gt :bn<cr>
map gT :bp<cr>
map gd :bd<cr>  

" Colorscheme
colorscheme railscasts
" Setting mapleader
let mapleader = "\<Space>"

" Trying remapping
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Copy paste to clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
