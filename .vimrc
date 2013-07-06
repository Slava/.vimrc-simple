" for Vundle plugin
set nocompatible
filetype off " Vundle needs it

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle "gmarik/vundle"
Bundle "snipMate"
Bundle "pangloss/vim-javascript"
Bundle "scrooloose/nerdtree"
Bundle "sjl/gundo.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "groenewege/vim-less"
Bundle "elzr/vim-json"
Bundle "tpope/vim-markdown"

" Colors
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=0 " set to 1 if using transparant background
let g:solarized_visibility="low"
colorscheme solarized
set background=dark

" Turns syntax highlighting on
syntax on

" Numbers, can you imagine?
set number

" Extra info on the bottom
set ruler

" Highlight current line
set cursorline

" Search tweaks
set hlsearch
set incsearch
" Kill current search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Leader key is comma
let mapleader = ","

" Show/hide invisibles by <leader>l
nmap <leader>l :set list!<CR>

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on 
  filetype plugin indent on 
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Handlebars syntax
  autocmd BufRead,BufNewFile *.handlebars,*.hbs,*.html set ft=html syntax=handlebars

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml

  " automatically reload vimrc when it's saved
  autocmd BufWritePost .vimrc so ~/.vimrc
endif

" Prefer spaces to tabs and set size to 2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Allows to use mouse to move the cursor
set mouse=a

" Indentation tweaks:
" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv
" dumb indent
set autoindent

" No need to switch back to English in normal mode
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<> 

" Buffers tweaks
" Allow to switch from changed buffer
set hidden

" Splits tweaks
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tabs tweaks
" tab movements
nnoremap <Leader>m :tabn<return>
nnoremap <Leader>n :tabp<return>

" Wrapping tweaks
set wrap
set linebreak
set textwidth=80
set formatoptions=cq " format using textwidth, including comments and gq

" Spelling tweaks
" toggle spelling on/off
nmap <silent> <leader>s :set spell!<CR>

" I can type :help on my own, thanks.
noremap <F1> <Esc>

" Gaming swap files
set backupdir=/tmp
set directory=/tmp

" MacVim or GVim options
if has("gui_running")
  set guioptions-=L
endif

