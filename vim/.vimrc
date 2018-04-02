set number
set colorcolumn=80
colorscheme jellybeans

set ruler
set bs=2
set nocompatible
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ignorecase
set noautoindent
set nocindent
set noerrorbells
set visualbell
set hlsearch
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif

set cursorline
highlight CursorLine term=bold cterm=bold
