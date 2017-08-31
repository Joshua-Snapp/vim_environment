mkdir ~/.vim/bundle
cd ~/.vim/bundle

git clone https://github.com/tpope/vim-pathogen.git
git clone https://github.com/jnurmine/Zenburn.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/gmarik/Vundle.vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/rodjek/vim-puppet.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone https://github.com/honza/vim-snippets.git

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

sudo yum install -y gcc cpp gcc-c++

mkdir ~/ycm_build
cd ~/ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs


~~~~~~~~Below text is the .vimrc file~~~~~~~~~~~~~~~

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

set runtimepath+=~/.vim/bundle/ultisnips

execute pathogen#infect()
syntax on
filetype plugin indent on

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
          set t_Co=256
  endif

" Set zenburn as color theme.
colors zenburn

" Set airline for power bar.
set laststatus=2

" Set search highlighting on.
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch

" Set toggle options.
:nmap \l :setlocal number! relativenumber!<CR>
:nmap \o :set paste!<CR>
:nmap \q :set nohlsearch<CR>
map \n :NERDTreeToggle<CR>


"These lines will allow YouCompleteMe and UltiSnips to coexist.

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
