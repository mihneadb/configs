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
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/emmet-vim'
Bundle 'Gundo'

" lang specific
Bundle "pangloss/vim-javascript"
Bundle 'Valloric/YouCompleteMe'
Bundle 'guns/vim-clojure-static'
Bundle 'marijnh/tern_for_vim'
Bundle 'wting/rust.vim'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'psykidellic/vim-jekyll'
Bundle 'digitaltoad/vim-jade'
Bundle 'elixir-lang/vim-elixir'
Bundle 'ekalinin/Dockerfile.vim'

filetype plugin indent on

