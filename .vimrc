set encoding=utf-8
call plug#begin()
    Plug 'kovisoft/paredit'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'godlygeek/tabular'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-surround'
    Plug 'machakann/vim-highlightedyank'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'nathanaelkane/vim-indent-guides'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Python specific
    Plug 'tmhedberg/SimpylFold'
    Plug 'nvie/vim-flake8'
    " C++ specific
    Plug 'valloric/youcompleteme'
    Plug 'majutsushi/tagbar'
    " CSV
	Plug 'chrisbra/csv.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme monokai_pro
set termguicolors

filetype plugin on

set number
set ruler
" set relativenumber
" line numbers
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set scrolloff=10
set softtabstop=4

"set cursorline

let python_hilight_all = 1
syntax on

set nocompatible
set nowrap
set showmode
set smartcase
set smarttab
set smartindent
set autoindent
set incsearch
set mouse=a
set history=1000

highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest


"nerdtree
map <Leader>n :NERDTreeToggle<CR>


" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \}
set laststatus=2

" Toggle NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" Ignore unnecessary files in nerdtree
let NERDTreeIgnore=['\.png$']

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
