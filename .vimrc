set nocompatible              " required
filetype off                  " required

set modelines=0  " prevents some security exploits

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'github/copilot.vim'
Plugin 'haya14busa/is.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" plugin on github repo
" rainbow brackets
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
"Plugin 'davidhalter/jedi-vim'
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdcommenter'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" trying to enable ale linter and fixers
let g:ale_linters = {'python': ['flake8', 'bandit', 'mypy']}

let g:ale_fixers = {
                        \  '*': ['remove_trailing_lines',
                        \        'trim_whitespace'],
                        \        'python': [
                        \'black',
                        \ 'isort',
                        \ 'autopep8',
                        \ 'add_blank_lines_for_python_control_statements',
                        \'autoflake',
                        \'autoimport',
                        \'pyflyby',
                        \'reorder-python-imports',
                        \'yapf',
                        \]
                        \}

let g:ale_fix_on_save = 1

" syntax highlighting
let python_highlight_all=1
syntax on

set tabstop=4 " Tab visual appearance

set softtabstop=4 "Effective tab while editing

set shiftwidth=8

set expandtab " Tabs are space
set ignorecase " ignore case when searching
set nowrap " stop lines from wrapping
set incsearch " do incremental searching

"Line numbering
set number

" Show command
set showcmd

" Cursor line highlight
set cursorline

"wild menu autocomplete tab and shift tab in vim command line
set wildmenu
set wildmode=longest:list,full

set omnifunc=syntaxcomplete#Complete
" set hlsearch    " hightlight searches

" Highlight matching brackets
set showmatch

" Code folding
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

" create undo files so that undo is available after cloding file
set undofile

" exit insert mode with jj
inoremap jj <Esc>
nnoremap <F4> :NERDTreeToggle<CR>

" run python file with , leader key
nnoremap <leader>r :!clear;python3 %<CR>

" source vimrc
noremap <F6> :source ~/.vimrc<CR>

" change leader key to ,
let mapleader = ","
