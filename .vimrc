syntax on
set mouse=a
set number
" set relativenumber
" set cursorline
" set cursorcolumn

filetype on
filetype indent on
filetype plugin on

set autoindent
" Number of auto-indent spaces
set shiftwidth=4
set smartindent
set smarttab
" Number of spaces per Tab
set softtabstop=4
set tabstop=4
" Convert tabs to spaces
set expandtab

set nobackup
set noswapfile
set incsearch
set history=1000
set undolevels=1000

" highlight search matches in the active window as well as in split windows
set  hlsearch
" highlights search matches in real time as we type them out
set  incsearch
" when a bracket is inserted, briefly jump to the matching one if it can
set showmatch


" STATUS LINE ------------------------------------------------------------ {{{
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
" set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set statusline+=\ row:\%l\ col:\%c\ percent:\%p%%

" Show the status on the second to last line.
set laststatus=2
" }}}
