"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/oge/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/oge/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'bling/vim-airline' " colorful status bar
NeoBundle 'ctrlpvim/ctrlp.vim' "fuzzy file searching
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'tpope/vim-fugitive' "git wrapper

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set mouse=a
colorscheme desert

set expandtab
set tabstop=2
set shiftwidth=2
set incsearch
set ignorecase
set smartcase

set backupdir=/tmp/
set directory=/tmp/
set undofile
set undodir=~/.vim/undodir

set number "line numbers

set laststatus=2 "show airline status bar always
set guioptions-=T "remove gvim toolbar
