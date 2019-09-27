"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/jota/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/jota/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'

" Antlr plugin
NeoBundle 'dylon/vim-antlr'

" Required:
call neobundle#end()

" call plug#begin()
" Plug 'artur-shaik/vim-javacomplete2'
" call plug#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Set hybrid line number (absolute and relative)
set number relativenumber

" Surround plugin
NeoBundleLazy 'tpope/vim-surround', {'autoload': { 'filetypes': 'all' } }
NeoBundleLazy 'tpope/vim-repeat', {'autoload': {'filetypes': ['clojure', 'rst', 'python']} }
" Comment plugin
NeoBundleLazy 'tpope/vim-commentary', {'autoload': { 'filetypes': 'all' } }

" Indentation settings
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Fold / Collapse
" set foldmethod=indent
" set foldlevel=1
" set foldclose=all

" Set Search Highlight
set nohlsearch

" Set status line
set laststatus=2

set statusline=
" set statusline+=%#PmenuSel#

set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
" set statusline+=%#CursorColumn#
set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
" set statusline+=\
