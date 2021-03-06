set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'        " let Vundle manage Vundle, required
Plugin 'editorconfig/editorconfig-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'       " needed by easytags
Plugin 'xolox/vim-easytags'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()

" Switch syntax highlighting on, when the terminal has colours
syntax on

" Turn on line numbers
set number

" Status bar
set laststatus=2     " always show

" Bufferline
let g:bufferline_echo = 0    " don't echo to command bar

" Show tabs and trailing spaces
set list listchars=tab:>-,trail:~

" Indenting
filetype plugin indent on " Enable language-dependent indenting
set tabstop=4     " The width of a tab
set shiftwidth=4  " Indent size

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Highlight search matches
set hlsearch
" Ignore case in search
set smartcase

" No backup files
set nobackup
" No write backup
set nowritebackup
" No swap file
set noswapfile

" Theme
set t_Co=256	" Enable 256 colours
set background=dark
try
    colorscheme solarized
catch
    colorscheme default
endtry

" NERDTree
map <C-n> :NERDTreeToggle<CR>   " Set ctrl-n shortcut
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$','\.hg$','\.svn$','\.DS_Store$','\.idea$','\.project$']

" CtrlP
let g:ctrlp_show_hidden=1
let g:ctrlp_max_height=10

" Omni completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
