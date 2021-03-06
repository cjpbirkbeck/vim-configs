" This file is for loading vim with my prefered settings, but without plugins.
" For situtations where I've only have access to vanilla vim.

set nocompatable                        " Do not emulate the original ex/vi
syntax on                               " Enable syntax highlight
filetype plugin indent on               " Load filetype detection and indenting

set ruler                               " Enable ruler at the bottom by default.
set incsearch                           " Display incremental results of searches
set hlsearch                            " Highlight search matches
set backspace=indent,eol,start          " Backspace will delete almost everything
set listchars="tab:> ,trail:-,nbsp:+"   " Show non-printing characters as such
set showcmd                             " Show the incremental results of commands
set ttyfast                             " Assume that I am using a fast terminal
set smarttab                            " Tab smartly
set encoding="utf-8"                    " Encode everything in UTF-8
set display=lastline,msgsep             " Show results of last line

" Set the statusline to the following:
set statusline=%1*[%n]
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ %y%*
set statusline+=%=
set statusline+=%2*[%{&fileformat}\ %{&fileencoding?&fileencoding:&encoding}]
set statusline+=\ {%B}
set statusline+=\ %l:%c/%L
set statusline+=\ %P

" Source the common file
source ./common.vim
