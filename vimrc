" --- base configration ---

" [ environment ]
set nocompatible

" [ hotkey ]
let mapleader=";"

" [ filetype detection ]
filetype on
filetype plugin on
filetype indent on

" [ interface ]
set number " display line number
set laststatus=2 " display status bar
set ruler
set nowrap
set wildmenu " command line autocomplete in vim

" [ edit ]
" auto save current position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" [ search ]
set incsearch "realtime
set ignorecase
set hlsearch " highlight result

" [ code reading ]
" <cscope>
" generate database: cscope -Rbqk
if has("cscope")
	set nocscopeverbose
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	" find symbols
	nmap cs :cs find s <C-R>=expand("<cword>")<CR><CR>
	" find definination
	nmap cg :cs find g <C-R>=expand("<cword>")<CR><CR>
	"find called functions
	nmap cd :cs find d <C-R>=expand("<cword>")<CR><CR>
	"find caller functions
	nmap cc :cs find c <C-R>=expand("<cword>")<CR><CR>
	"find string
	nmap ct :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap ce :cs find e <C-R>=expand("<cword>")<CR><CR>
	"find file
	nmap cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
	"find protector of includes
	nmap ci :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>
endif

" --- vim-plug ---
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()

" --- plugin configuration ---
" tagbar
let g:tagbar_left = 1
let g:tagbar_compact=1
nmap tg :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)
highlight TagbarHighlight ctermfg=Green
highlight Search ctermfg=black ctermbg=yellow
