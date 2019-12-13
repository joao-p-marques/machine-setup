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

" " Snippets plugin
" Plug 'ncm2/ncm2', { 'on' : [] }
" Plug 'SirVer/ultisnips', { 'on' : [] }
" Plug 'honza/vim-snippets', { 'on' : [] }
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" NeoMake
Plug 'neomake/neomake'

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe'

" Completion
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins'}

" " Completion Sources

" All
" Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" Python
Plug 'deoplete-plugins/deoplete-jedi', { 'for' : 'python', 'on': [] }

" " Java
" Plug 'artur-shaik/vim-javacomplete2', { 'for' : 'java' }

" TypeScript
Plug 'HerringtonDarkholme/yats.vim', { 'for' : 'ts' }
" Plug 'mhartington/nvim-typescript', { 'for' : 'ts', 'do': './install.sh' }

" " JavaScript
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for' : 'js' }

Plug 'ayu-theme/ayu-vim'

Plug 'ctrlpvim/ctrlp.vim'

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

" set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" augroup load_us_ycm
"   " autocmd!
"   autocmd InsertEnter * call plug#load('deoplete.nvim')
"                      \| autocmd! load_us_ycm
" augroup END

autocmd FileType java setlocal omnifunc=javacomplete#Complete

if &filetype ==# 'java'
  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
  let g:deoplete#sources = {}
  let g:deoplete#sources._ = []
endif

" javacomplete2
nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Deoplete
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
