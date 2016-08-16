set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
Plugin 'haya14busa/incsearch.vim'
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line


syntax on
colorscheme twilight
filetype plugin on
filetype indent on
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=gray
set guifont=Menlo\ Regular:h12
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
set splitbelow
set cursorline


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


" Git Gutter
let g:gitgutter_sign_column_always=1


" Shortcuts
nmap <leader>s :w!<cr>
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
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers=['coffeelint', 'coffee']
let g:used_javascript_libs='ramda,react'


" Fuzzy Search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

