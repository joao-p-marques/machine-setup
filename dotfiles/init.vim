" Install vim-plug:
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

" Add or remove your Bundles here:

Plug 'tpope/vim-fugitive'

" Antlr plugin
Plug 'dylon/vim-antlr', { 'for' : 'g4' }

" Surround plugin
Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

" Comment plugin
Plug 'tpope/vim-commentary'

" Snippets plugin
" Plug 'ncm2/ncm2', { 'on' : [] }
Plug 'SirVer/ultisnips', { 'on' : [] }
" Plug 'honza/vim-snippets', { 'on' : [] }
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" NeoMake
Plug 'neomake/neomake'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Completion
" Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' , 'on': [] }

" Completion Sources
Plug 'deoplete-plugins/deoplete-jedi', { 'for' : 'python', 'on': [] }
Plug 'artur-shaik/vim-javacomplete2', { 'for' : 'java' }

Plug 'ayu-theme/ayu-vim'

call plug#end()

" Set number
set number relativenumber

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>

" Indentation settings
set expandtab
set shiftwidth=2
set softtabstop=2

" Fold / Collapse
" set foldmethod=indent
" set foldlevel=1
" set foldopen=all

" Set Search Highlight
set hlsearch

set autoindent

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call neomake#configure#automake('w')

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu

augroup load_us_ycm
  " autocmd!
  autocmd InsertEnter * call plug#load('deoplete.nvim')
                     \| autocmd! load_us_ycm
augroup END

autocmd FileType java setlocal omnifunc=javacomplete#Complete

if &filetype ==# 'java'
  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
  let g:deoplete#sources = {}
  let g:deoplete#sources._ = []
endif
