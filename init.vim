" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" theme
Plug 'yggdroot/indentline'
Plug 'nordtheme/vim'

" start screen
Plug 'mhinz/vim-startify'

" tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'raimondi/delimitmate'
Plug 'roxma/vim-paste-easy'
Plug 'alvan/vim-closetag'

" icons
Plug 'ryanoasis/vim-devicons'

" Comenter
Plug 'scrooloose/nerdcommenter'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
colorscheme nord

" Complete using enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Explorer 
nnoremap <leader>e :NERDTreeToggle<CR>

" Identent lines char list
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" startify
 let g:startify_custom_header =
       \ startify#pad(split(system('figlet -w 100 VIM2020'), '\n'))

 " airline
 let g:airline_theme='nord'
