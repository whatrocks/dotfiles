" Don't try to be vi compatible
set nocompatible

" helps force plugins to load correctly when turned back on below
filetype off

" TODO: load plugins here (pathogen or vundle)

" syntax highlighting
syntax on

" for plugins to load correctly 
filetype plugin indent on

" Leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Highlight line
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Directory
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"  autocmd VimEnter * wincmd p
" augroup END


" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Statusbar
set laststatus=2

" Last line
set showmode
set showcmd

" Formatting
map <leader>q gqip

set t_Co=256
set background=dark
set termguicolors
colorscheme kuroi
