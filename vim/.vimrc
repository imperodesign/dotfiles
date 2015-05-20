syntax enable

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim      " runtime path to include vundle
call vundle#begin()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

call vundle#end()

" general
set nocompatible                       " forget vi compatibility
set autoindent
set autoread                           " reload files when changed on disk
set clipboard=unnamed                  " yank and paste with the system clipboard
set directory-=.                       " don't store swapfiles in the current directory
set encoding=utf-8

" tabs & spaces
set tabstop=4                          " visual spaces after TAB
set softtabstop=2                      " number of spaces in tab when editing
set expandtab                          " tabs are spaces

" ui config
set number                             " show line numbers
set showcmd                            " show last command in bottom bar
set cursorline                         " highlight cursor line
set cc=80                              " highlight column at 80 characters
filetype indent on                     " load filetype-specific indent files
set wildignore=log/**,node_modules/**/**
set wildmenu                           " visual autocomplete for command menu
set lazyredraw                         " redraw only when we need to.
set showmatch                          " highlight matching [{()}]
set list                               " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
let g:airline_powerline_fonts = 1      " fancy fonts for vim-airline

" keyboard shortcuts
let mapleader=","

" jk is escape
inoremap jk <esc>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" search
set incsearch                          " search as characters are entered
set hlsearch                           " highlight matches
set ignorecase                         " case-insensitive search
set smartcase                          " case-sensitive search if any caps
set scrolloff=3                        " show context above/below cursorline

" turn off search highlight
nnoremap <leader><Esc> :nohlsearch<CR>

" mouse
set mouse=a                            " enable basic mouse behavior
if exists('$TMUX')                     " Support resizing in tmux
  set ttymouse=xterm2
endif

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" gui settings
if (&t_Co == 256 || has('gui_running'))
  if ($TERM_PROGRAM == 'iTerm.app')
    colorscheme base16-default
  else
    colorscheme desert
  endif
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
