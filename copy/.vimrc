"
" Plugins
"
call plug#begin()
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'
call plug#end()


"
" User mappings
"

" NORMAL - Esc - disable search highlight
nmap <Esc> :nohl<CR>
" NORMAL - Tab - switch between .c/.h files
nnoremap <Tab> :A<CR>
" NORMAL - CTRL-N/CTRL-P jump forward/back in the jump buffer
" Also unbinds CTRL-O
nnoremap <C-o> <Nop>
nnoremap <C-n> <C-i><CR>
nnoremap <C-p> <C-o><CR>


"
" File system
"
set encoding=utf8
set undofile
set undodir=$HOME/.vim/undo
set backup
set backupdir=/tmp


"
" File type overrides
"

" Restore defaults before filetype switches
autocmd FileType * setl tw< ts< sts< et<
" No text wrapping in config files
autocmd FileType vim,conf,json,jsonc,text,i3config,dosini,systemd,cfg,toml,html,css,swayconfig setl tw=0
autocmd BufNewFile,BufRead */PKGBUILD setl tw=0
" Bigger tabs in text files
autocmd FileType text setl ts=8
" Some files should use spaces instead of tabs
autocmd FileType json,jsonc,python,nginx,xkb setl sts=-1 et
" 2 space indent in web dev
autocmd FileType html,css,javascript* setl sts=-1 et ts=2
" vim-toml does not provide automatic indenting, so make it a little easier to type manually
autocmd FileType toml setl sts=-1 et ts=2 ai


"
" Syntax highlighting
"
syntax on
set background=light
set t_Co=256
hi Visual cterm=reverse ctermbg=NONE ctermfg=NONE
hi ColorColumn ctermbg=174
hi Todo ctermbg=NONE ctermfg=4 cterm=reverse


"
" Formatting
"
filetype indent on
set tabstop=4
set shiftwidth=0
set textwidth=58 " wrap lines longer than this

" t - wrap to textwidth
" c - wrap code comments to textwidth
" q - let "gq" reformat command touch comments
" j - try to remove comment leaders when joining lines
set formatoptions=tcqj

" Ls - goto labels are shifted left once
" g0 - C++ public/private labels are not indented
" U1 - helps with indenting after open-paren "("
" (0 - align lines with text that follows an unclosed parenthesis
" Ws - shift right once if a line ends with an unclosed parenthesis
" m1 - shift back a closing paren to match its opener
" c0C1 - do not indent multi-line comments
set cinoptions=Lsg0U1(sW3m1c0C1

" Backspace cannot erase anything except what was typed since entering
" INSERT mode.
" eol - lets it erase inserted new lines
set backspace=eol


"
" Search
"
set hlsearch		" Highlight matches
set incsearch		" Show matches as you type
set ignorecase		" Case-insensitive search
set smartcase		" Case-sensitive if upper-case letters are present
set tags=./tags;/	" Continue searching parent directories for tags file


"
" User interface
"
set ruler			" Show row, col and page position
set laststatus=2	" Always show a status line
set wildmenu		" Prettier TAB-completion
set showcmd			" Show command partials in the lower right
set relativenumber	" Line numbers start counting from the current line
set colorcolumn=+1	" If textwidth is set, highlight col to the right
set belloff=all		" Never ring the terminal bell

" Jump to last viewed line when opening a file
autocmd BufReadPost * silent normal! g`"


"
" Cannot use arrow keys in NORMAL/INSERT modes
"
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
