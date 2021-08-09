set mouse=a
set number
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set signcolumn=yes
set noexpandtab
set tabstop=4 shiftwidth=4
set termguicolors
filetype plugin indent on

set hlsearch
set incsearch
set ignorecase
set smartcase

hi Normal guibg=NONE ctermbg=NONE

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fholgado/minibufexpl.vim'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

color dracula

nnoremap <F9> :MBEbp<CR>
nnoremap <F10> :MBEbn<CR>
