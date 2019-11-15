call plug#begin()
	Plug 'elmcast/elm-vim'
	Plug 'dense-analysis/ale'
	Plug 'vim-syntastic/syntastic'
	Plug 'ycm-core/YouCompleteMe'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'jreybert/vimagit'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-rsi'
	Plug 'leafgarland/typescript-vim'
	Plug 'Quramy/tsuquyomi'
call plug#end()

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

let mapleader = "\<Space>"
:imap fd <Esc>
:nmap <Leader>bb :Buffer <Enter>
:nmap <Leader>ff :GFiles <Enter>
set t_Co=256
set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
set number
set autoread
