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
Plug 'junegunn/goyo.vim'
Plug 'davidhalter/jedi-vim'
call plug#end()

let mapleader=","

colorscheme gruvbox
set background=dark

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

nmap <C-n> :NERDTreeToggle<CR>

filetype plugin on
filetype plugin indent on

" YAML Config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'


" YAML Fold level
set foldlevelstart=20


let g:AutoClosePreserveDotReg = 0


map <C-_>   <Plug>NERDCommenterToggle 
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
