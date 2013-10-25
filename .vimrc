set nocompatible

syntax enable
set t_Co=256
set background=dark
colorscheme mustang "solarized


" filetype off 
call pathogen#infect()
syntax on
 call pathogen#helptags()
 call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set history=1000
set undolevels=1000
set wildignore+=*.swp,*.:bak,*.pyc,*.class
set title
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set noerrorbells
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nobackup
set noswapfile
set clipboard=unnamed

" Undo Files
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" MacVim only (7.3)
if &t_Co >= 256 || has("gui_running")
    set relativenumber
    set undofile
    set guioptions-=T
endif

let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set textwidth=180
set formatoptions=qrn1

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
noremap <silent> <leader>sv :so $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERD Tree
map <leader>nt :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" Command-T
map <leader>t :CommandT<cr>

" Ack
map <leader>a :Ack 

" Yankring
nnoremap <silent> <leader>y :YRShow<cr>

" lusty-juggler
" http://www.vim.org/scripts/script.php?script_id=2050
nmap <silent> <Leader>b :LustyJuggler<CR>
let g:LustyJugglerSuppressRubyWarning = 1

" sparkup mappings
let g:sparkupNextMapping = '<c-x>'

" taglist toggle
map <leader>tl :TlistToggle<CR>
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
let Tlist_Show_One_File=1

" EasyMotion
let g:EasyMotion_leader_key = '<Leader><Leader>'

