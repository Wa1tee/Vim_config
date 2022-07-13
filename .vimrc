set encoding=utf-8
call plug#begin()
Plug 'kovisoft/paredit'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'nvie/vim-flake8'
call plug#end()


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
set textwidth=79

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

"syntastic settings
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

"supertab
if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

"nerdtree
map <Leader>n :NERDTreeToggle<CR>

" DelimitMate
let g:delimitMate_expand_cr = 2

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
let NERDTreeIgnore=['\.csv$', '\.png$']
