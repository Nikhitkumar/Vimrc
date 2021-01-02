syntax on
set noerrorbells
set vb t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=2

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-fugitive'
call plug#end()


colorscheme gruvbox
set background=dark
let g:airline_theme='angr'

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

filetype plugin on
filetype plugin indent on

" YAML Config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" YAML Fold level
set foldlevelstart=20


let g:AutoClosePreserveDotReg = 0

"Nerd tree toggle
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle <Esc>

"Comment
map <Leader>c   <Plug>NERDCommenterToggle 
vmap <Leader>c   <Plug>NERDCommenterToggle<CR>gv

"Switch Panes
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

"Splt 
nnoremap <Leader>\ :vsplit <Esc>
nnoremap <Leader>- :split <Esc>

"* PRIMARY and + CLIPBOARD
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p""
set t_ut=
