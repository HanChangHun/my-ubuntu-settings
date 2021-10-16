filetype plugin indent on
syntax on
syntax enable

set mouse=a

set nu rnu
set numberwidth=1

set clipboard=unnamed

set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set signcolumn=yes

set expandtab
set tabstop=2 shiftwidth=2

set hlsearch
set incsearch
set ignorecase
set smartcase

set nofixeol

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za	" space open/closes folds
set foldmethod=indent   " fold based on indent level

hi Normal guibg=NONE ctermbg=NONE
set termguicolors

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

let NERDTreeShowHidden=1

color dracula

nnoremap <F9> :MBEbp<CR>
nnoremap <F10> :MBEbn<CR>
