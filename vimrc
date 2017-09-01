set nocompatible              " be iMproved, required
filetype off                  " required

"let g:syntastic_debug = 3

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'Rykka/InstantRst'
Plug 'chrisbra/SudoEdit.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'jnurmine/Zenburn'
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nelstrom/vim-markdown-folding'
Plug 'mzlogin/vim-markdown-toc'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'rodjek/vim-puppet'
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-vinegar'
Plug 'bronson/vim-visual-star-search'

" Initialize plugin system
call plug#end()

"set runtimepath+=~/.vim/bundle/vim-pathogen
"execute pathogen#infect()

let &runtimepath.=',~/.vim/bundle/ale'

syntax on
filetype indent on
filetype plugin on

au BufWinEnter * setlocal number! relativenumber!

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" This should fix some weirdness with YouCompleteMe.
" (User defined completion (^U^N^P) Pattern not found)
" https://github.com/Valloric/YouCompleteMe/issues/1562
set shortmess+=c

" Set search highlighting on.
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
"
" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

" Set toggle options.
:nmap \l :setlocal number! relativenumber!<CR>
:nmap \p :set paste!<CR>
:nmap \q :set nohlsearch<CR>
:nmap \g :GitGutterAll<CR>

"Highlight and extra whitespace at the end of all lines.
highlight BadWhitespace ctermbg=lightgrey
call matchadd('BadWhitespace', '/\s\+$/', 100)
"au BufRead,BufNewFile * match BadWhitespace /\s\+$/

"Highlight the 80 character in every row in lightgrey.
highlight ColorColumn ctermbg=lightgrey
call matchadd('ColorColumn', '\%80v', 100)

"This line fixes a problem where I couldn't use backspace to backup to the
"previous line.
set backspace=2 " make backspace work like most other apps

"Recommended Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%{ObsessionStatus()}

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:UltiSnipsSnippetDirectories=["vim-ultisnips-jksnapp"]

"These lines will allow YouCompleteMe and UltiSnips use of the Tab button to coexist.
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"Fix for YouCompleteMe on Arch
let g:ycm_server_python_interpreter='/usr/bin/python2'

" Set airline for power bar.
set laststatus=2

let g:instant_markdown_autostart = 0

let g:table_mode_corner="|"

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
          set t_Co=256
  endif

"The use of "set t_Co=256" does not seem to work in the previous if statement.
set t_Co=256

" Set zenburn as color theme.
"let g:zenburn_high_Contrast = 1
"colors zenburn

" Increase number of files detected by CTRLP plugin.
"let g:ctrlp_max_files=0
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:50'

