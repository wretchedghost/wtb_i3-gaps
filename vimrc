" Don't include vi compatibility
set nocompatible

"set cursorline
set wildmenu
set title

"nnoremap <F2>

" Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM =="urxvt"
    set t_Co=256
endif

" Show trailing whitespace chars
"set list
"set listchars=tab:>-,trail:.,extends:#,nbsp:.

"Better buffer management - hide buggers instead of closing them 
set hidden
set history=1000
set undolevels=1000

" tab -> spaces
set expandtab
set tabstop=4	" a tab is 2 spaces
set softtabstop=4	" tab size when inserting/pasting
set shiftwidth=4	" number of spaces to use for autoindenting
set shiftround	" use multiple of shiftwidth when indenting with '<' and '>'
set smarttab	" insert tabs on the start of a line according to shiftwidth, not tabstop

set autoindent	" always set autoindenting on
set copyindent	" copy the previous indentation on autoindenting

set nofoldenable
	" fold by default
  "set nofoldenable
	" dont fold by default
set foldmethod=indent	" fold based on indention
set foldnestmax=10	" deepest fold is 10 levels
set foldlevel=1

set wrap

" Ruler on
set ruler
" Line number on
set nu

"use ack for grepping
set grepprg=ack
set grepformat=%f:%l:%m

" dont use backup files
"set nobackup
" Turn on backup option
set backup
" Where to store backups
set backupdir=~/.vim/backup//
" Make backup before overwriting the current buffer
set writebackup
" Overwrite the original backup file
set backupcopy=yes
" Meaningful backup name, ex: filename@2021-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" Swap
set noswapfile
set directory=.,./.backup,/tmp

execute pathogen#infect()

syntax on	" Enable syntax highlighting
filetype on " Enable filetype detection

filetype indent on	" Enable filetype-specific indenting
filetype plugin on	" Enable filetype-specific plugins

" Search Settings
set incsearch	" show search matches as you type
set ignorecase	" case insensitive search
set smartcase	" if a capital letter is included in search , make it case-sensitive
set nohlsearch	" dont highlight search results

"colorscheme vividchalk
colorscheme vividchalk

set background=dark

set scrolloff=2

set shortmess=atI

"set visualbell	" don't beep
set noerrorbells	" don't beep

" Auto read when a file is changed on disk
set autoread

" status line
set laststatus=2

" Return to last edit position when opening files
autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <=line("$") | exe "normal! g'\"" | endif

"""""""""""""" MARKDOWN """"""""""""""""""""""""""""""""

" Treat all .md files as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Highlight the line the cursor is on
autocmd FileType markdown set cursorline

" Hide and format markdown elements like **bold**
"autocmd FileType markdown set conceallevel=2

""""""""""""" END MARKDOWN """""""""""""""""""""""""""

" Allow editing a file as superuser when not first run as superuser
cmap w!! %!sudo tee > /dev/null %

abbr _sh #!/bin/bash

":syntax on
":color delek

"set tabstop=4
"set backspace=indent,eol,start " allow backspacing over everything in insert mode
"set autoindent	" always set autoindenting on
"set number 	" always show line numbers
"set showmatch	" set show matching parenthesis
"set ignorecase	" ignore case when searching
"set hlsearch	" highlight search terms
"set incsearch	" show search matches as you type

"set history=1000	" remember more commands and search history
"set undolevels=1000	" use many levels of undo
"set showcmd		" show last command in bottom bar
