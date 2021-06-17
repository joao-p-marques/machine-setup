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

" TypeScript
NeoBundle 'HerringtonDarkholme/yats.vim'

" CtrlP
NeoBundle 'ctrlpvim/ctrlp.vim'

" Vimspector
NeoBundle 'puremourning/vimspector'

" Required:
call neobundle#end()

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
" set nohlsearch
set hlsearch

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

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Map Ctrl-Backspace to delete the previous word in insert mode.
set backspace=indent,eol,start
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector
