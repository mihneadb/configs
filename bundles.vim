set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" general
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'bitc/vim-bad-whitespace'
Bundle 'ciaranm/detectindent'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'troydm/easybuffer.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/emmet-vim'
Bundle 'Gundo'

" lang specific
Bundle 'pangloss/vim-javascript'
Bundle 'Valloric/YouCompleteMe'
Bundle 'guns/vim-clojure-static'
Bundle 'rust-lang/rust.vim'
Bundle 'tpope/vim-markdown'
Bundle 'elixir-lang/vim-elixir'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'derekwyatt/vim-scala'
Bundle 'fatih/vim-go'
Bundle 'cespare/vim-toml'

filetype plugin indent on

