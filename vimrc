" Vundle stuff
source ~/.bundles.vim

set nocompatible
set modeline

"set spell

" leader comma
let mapleader = ","

set laststatus=2
"set encoding=utf-8

if has("gui_running")
  set guifont=Source\ Code\ Pro\ 11
endif

" mac only
if has("gui_macvim")
  set guifont=Source\ Code\ Pro:h12
endif

colors zenburn

set hidden

syntax on
set number
set cursorline
set showmatch
set incsearch
set hlsearch
set ruler
set autoread
set mouse=a
set cc=80

set nowrap
set showmatch
set smartcase

set smarttab

filetype plugin indent on

" CtrlP
" Don't change cwd
let g:ctrlp_working_path_mode = '' " or 'rc'
" Mixed mode
let g:ctrlp_cmd = 'CtrlPMixed'
" Gotosymbol Ctrl+R
map <C-R> :CtrlPBufTagAll<CR>
" scan ALL the files
"let g:ctrlp_max_files = 0

" Detect Indent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4
autocmd BufNewFile,BufReadPost * :DetectIndent
autocmd FileType make setlocal noexpandtab

set history=1000
set undolevels=1000
set wildignore+=*.swp,*.bak,*.pyc,*.class,*.o
set title

set pastetoggle=<F3>

" Nerdcommenter binding
map <leader>/ <plug>NERDCommenterToggle
imap <leader>/ <Esc><plug>NERDCommenterTogglei

" Nerdtree binding
map <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>

" Nerdtree ingore
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.o$', '\.class$', '\.out$', '\.o$']

" Tagbar binding
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Easybuffer
map <leader>b :EasyBufferToggle<CR>

" Don't select the first completion item, menu still if one match
set completeopt=longest,menuone

noremap <F5> :GundoToggle<CR>

" command mode smartcase completion
set ignorecase
set infercase

" Strip trailing ws
if !exists("*StripWS")
  function StripWS()
      :%s/\s\+$//e
  endfunction
endif


" C-space for omnicomplete
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-x><C-o>
else " no gui
  if has("unix")
    inoremap <Nul> <C-x><C-o>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

set backspace=indent,eol,start

let g:ycm_confirm_extra_conf = 0

let javascript_enable_domhtmlcss = 1

