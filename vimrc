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
set relativenumber
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
