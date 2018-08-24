set nocompatible
filetype plugin on
syntax on
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" -- Start my plugins --
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'https://github.com/rakr/vim-one.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'chriskempson/base16-vim'
Plugin 'https://github.com/morhetz/gruvbox.git'
Plugin 'junegunn/fzf.vim'
" -- End my plugins --

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Use true colors
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if &term == 'putty-256color'
    set term=screen-256color
    set t_Co=256
    set background=light
    source ~/.vimrc_background
endif

" one colorscheme settings
set t_Co=256
let g:one_allow_italics = 1
colorscheme gruvbox

" Setup fzf stuff
set rtp+=/usr/local/opt/fzf

" Use jj to leave insert mode
imap jj <Esc>
" Go down/up fast
map <S-K> 5<C-Y>
map <S-J> 5<C-E>
" Go down/up really fast
map <S-I> 10<C-Y>
map <S-U> 10<C-E>

" Go to next/prev buffer
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" Highlighting
hi SpecialKey ctermfg=3
hi Folded ctermfg=87 ctermbg=232

" Folding key maps
nnoremap <Space> za
nnoremap <F1> zMzv
nnoremap <F2> zR

" -- Start syntax shit --
filetype plugin indent on
set background=dark
set encoding=utf-8
set hidden
set showcmd
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set relativenumber
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells
set listchars=tab:>.,trail:~,extends:#
set list
set ttyfast
set mouse=
set nocompatible
set backup
set backupdir=~/.vim_backup
set noswapfile
set fileformats=unix,dos,mac
set laststatus=2
set expandtab
set softtabstop=4 tabstop=4 shiftwidth=4
set ruler
set wildignore=*.swp,*.bak
set wildmode=longest,list
set foldenable
set foldmethod=indent
set foldlevel=6

" Turn on cursorline
set cursorline


