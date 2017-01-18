set nocompatible              " be iMproved, required
filetype off


call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'haya14busa/incsearch.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'moll/vim-node', { 'for': ['javascript', 'coffee'] }
Plug 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call plug#end()


syntax on
syntax enable
colorscheme base16-default-dark
filetype plugin on
filetype plugin indent on
filetype indent on
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=gray
set guifont=Menlo\ Regular:h12
set background=dark
set colorcolumn=80
set number
set history=500
set ruler
set ignorecase
set smartcase
set autoread
set lazyredraw
set magic
set showmatch
set splitright
set splitbelow
set cursorline
set termguicolors
set backspace=indent,eol,start
set relativenumber

" Files, backups
set hidden
set nobackup
set nowb
set noswapfile


" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent


" Auto-remove Trailing Whitespaces
autocmd BufWritePre * %s/\s\+$//e


" Inc Search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


" The Silver Searcher (Ag)
if executable('ag')
  let g:ackprg = 'ag --vimgrep'

  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 1
endif


" Git Gutter
let g:gitgutter_sign_column_always=1


" Leader / Shortcuts
let mapleader = "\<Space>"
nmap <leader>w :w!<cr>
map <leader><leader> :NERDTreeToggle<cr>
map <leader>. :NERDTreeFind<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Sound
set noerrorbells
set novisualbell


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers=['coffeelint', 'coffee']
let g:used_javascript_libs='ramda,react'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


" Fuzzy Search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40


" Vim Easy Align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

