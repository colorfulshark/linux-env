" --- base configration(no plugin) ---

" [ environment ]
set nocompatible

" [ hotkey ]
let mapleader=";" " prefix

" [ filetype detection ]
filetype on
filetype plugin on
filetype indent on

" [ interface ]
set number " display line number
set laststatus=2 " display status bar
set ruler
set cursorline " highlight curent line
set cursorcolumn " highlight curent column
set nowrap
set wildmenu " command line autocomplete in vim

" [ edit ]
set expandtab " convert tab to space
set tabstop=8 " 1 tab takes up 8 space while editing
set shiftwidth=8 " 1 tab takes up 8 space while formating
set softtabstop=8 " regard 4 continue space as a tab

" [ search ]
set incsearch "realtime
set ignorecase
set hlsearch " highlight result

