""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set incsearch
set virtualedit=all
set history=700
set hidden
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
set number
set ignorecase
set smartcase
set scrolloff=3

colorscheme desert

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" filetype plugin
filetype plugin on
filetype indent on

set autoread

" Auto reload vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

" Remap some built ins...
let mapleader = ","
let g:mapleader = ","
"nnoremap ; :
vmap Q gq
nmap Q gqap

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"sudo
cmap w!! w !sudo tee % > /dev/null

"Reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Bash Style completion
set wildmode=longest,list,full
set wildmenu

""""""""""""""""""""""""""""""""""""""""
" XML
""""""""""""""""""""""""""""""""""""""""
map <leader>x :set filetype=xml<CR>
	\:source $VIMRUNTIME/syntax/xml.vim
	\:set foldmethod=syntax<CR>
  	\:source $VIMRUNTIME/syntax/syntax.vim<CR>
  	\:colors peachpuff<CR>
  	\:source $HOME/.vim/ftplugin/xml.vim<CR>
  	\:iunmap <buffer> <leader>.<CR>
  	\:iunmap <buffer> <leader>><CR>
  	\:inoremap \> ><CR>
  	\:echo "XML mode is on"<CR>
  	" no imaps for <leader>
  	"\:inoremap \. ><CR>

" catalog should be set up
nmap <leader>l <leader>cd:%w !xmllint --valid --noout -<CR>
nmap <leader>r <leader>cd:%w !rxp -V -N -s -x<CR>
nmap <leader>d4 :%w !xmllint --dtdvalid 
  \ "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
  \ --noout -<CR>

vmap <leader>px !xmllint --format -<CR>
nmap <leader>px !!xmllint --format -<CR>
nmap <leader>pxa :%!xmllint --format -<CR>

nmap <leader>i :%!xsltlint<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
""""""""""""""""""""""""""""""""""""""""""""""""""
imap ,/ </<C-X><C-O>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Java
""""""""""""""""""""""""""""""""""""""""""""""""""
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"source $HOME/.vim/plugin/javakit/vim/JavaKit.vim

let Checkstyle_Classpath = '/usr/share/java/checkstyle.jar'

""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_WinWidth = 50
map <F4> :TlistToggle<CR>
"map <F8> :!/usr/bin/ctags -R .<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized
""""""""""""""""""""""""""""""""""""""""""""""""""
"syntax enable
"set background=dark
"colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""
" Clojure
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimclojure#HighlightBuiltins=1
let g:vimclojure#ParenRainbow=1
let g:vimclojure#DynamicHighlighting=1
let g:slime_target = "tmux"


