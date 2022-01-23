call plug#begin()
"	Plug 'elmcast/elm-vim'
	Plug 'dense-analysis/ale'
"	Plug 'vim-syntastic/syntastic'
"	Plug 'ycm-core/YouCompleteMe'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
"	Plug 'jreybert/vimagit'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
"	Plug 'tpope/vim-rsi'
	Plug 'herringtondarkholme/yats.vim'
"	Plug 'leafgarland/typescript-vim'
"	Plug 'Quramy/tsuquyomi'
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/vim-hug-neovim-rpc'
	Plug 'roxma/nvim-yarp'
	Plug 'tpope/vim-dadbod'
call plug#end()

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"
"let g:elm_syntastic_show_warnings = 1
"let g:ycm_semantic_triggers = {
"     \ 'elm' : ['.'],
"     \}

let mapleader = "\<Space>"
:imap fd <Esc>
:nmap <Leader>bb :Buffer <Enter>
:nmap <Leader>ff :GFiles <Enter>
set t_Co=256
set ballooneval
"autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
set autoread
nmap <silent> <F3> :cprev<CR>
nmap <silent> <F4> :cnext<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"ALE general
nmap <silent> <F2> :ALENext<cr>
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
nnoremap <silent> gr :ALEFindReferences<CR>
nnoremap <leader>rn :ALERename<CR>
let g:ale_fix_on_save = 1

"typescript
let js_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace'],
			\   'javascript': js_fixers,
			\   'javascript.jsx': js_fixers,
			\   'typescript': js_fixers,
			\   'typescriptreact': js_fixers,
			\   'css': ['prettier'],
			\   'json': ['prettier'],
			\}
let g:ale_linters = { 'ts': ['tsserver'] }
autocmd FileType javascript map <buffer> <c-]> :ALEGoToDefinition<CR>
autocmd FileType typescript map <buffer> <c-]> :ALEGoToDefinition<CR>
autocmd FileType typescriptreact map <buffer> <c-]> :ALEGoToDefinition<CR>

"let g:ale_linters = { 'elm': ['elm_ls']
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
let g:OmniSharp_selector_findusages = 'fzf'
autocmd FileType cs map <buffer> <c-]> :OmniSharpFindImplementations<CR>
autocmd FileType cs nmap <silent> <leader>rn <Plug>(omnisharp_rename)

"databasae connection
"let g:db = "sqlserver://'sa':Vinardell11!@localhost:1433\\SQLEXPRESS/GDB_CPQ_DEV"
let g:db = 'sqlserver://localhost:1433;Database=GSB_CPQ_DEV;user=sa;password=Vinardell11!;'
