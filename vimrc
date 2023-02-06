" set the runtime path to include Vundle and initialize
"
" 			MAKE SURE VUNDLE IS INSTALLED
"
"{{{ ===== Plugins ==================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colorscheme
Plugin 'morhetz/gruvbox'

" vimwiki
Plugin 'vimwiki/vimwiki'

"NerdTree
Plugin 'preservim/nerdtree'

"fzf
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

"vim-ripgrep
Plugin 'jremmen/vim-ripgrep'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"}}} === End of Plugins ============

"fzf vim Plugin keyboard shortcut ===={{{
" Control + p to open file search with fzf
nnoremap <C-p> :Files<Cr>

"Control + b open buffers
nnoremap <C-b> :Buffers<Cr>

"======}}}

"NerdTree Settings ============= {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"End NerdTree ================ }}}

"ripgrep search for tags{{{
nnoremap <leader>t :Rg ::
"=======================}}}

" General Setings ===={{{
"Colorscheme
colorscheme gruvbox
set background=dark

" set commands here
set ignorecase "searchte buyuk kucuk harf ayrimi olmasin
set backspace=indent,eol,start

set tabstop=4
set autoindent

"RELATIVE lINE NUMBERS
"Delete all files in .vim/view to effect immediately.
set number "set line numbers
set rnu   "turn on relative line numbers
"set nornu  "turn relative line numbers off. 

"Wrap text instead of being on one line
set lbr

"Aramayi baslatir baslatmaz sonucu goster.
set incsearch

"Always show statusline
set showtabline=1

"Highlight Search Results
"set hlsearch

set nocompatible
syntax on
filetype plugin indent on

"===== }}}

"{{{ Folding Method
set foldmethod=marker

"Vim Folding icin
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
"}}}

"{{{ Key Bindings
let mapleader = '\'      "Leader key \ olarak ata.
nmap <leader>w :w<CR>   "save
nmap <leader>q :q!<CR>  "quit without saving vim

"markdown folding. Bu kisayol asagidaki komutu verir ve markdown dosyasi
"otomatik folding yapar
nmap <leader>m :set foldmethod=expr foldexpr=MarkdownFolds()<CR>

"NERDTree icin C-n kisayolunu ata
map <C-n> :NERDTreeToggle<CR>

"Buffer Delete
" Leader \ + d
nnoremap<leader>d :bd<CR>

"}}}

"{{{ ack vim plugin icin keyboard shortcut
nmap <leader>a :tab split <CR>:Ack -i ""<left>
"}}}

"{{{ Asagidaki satirlar curcor rengini degistiriyor. Daha iyi boyle.
if &term =~ "xterm\\|rxvt"
" use an orange cursor in insert mode
let &t_SI = "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI = "\<Esc>]12;blue\x7"
silent !echo -ne "\033]12;blue\007"
" reset cursor when vim exits
autocmd VimLeave * silent !echo -ne "\033]112\007"
" use \003]12;gray\007 for gnome-terminal
endif
"}}}

"{{{ Copy and Paste from and to vim
"Asagidaki satirda calisiyor ama bir cok program icin bir altinaki satir daha
"guvenli.
"vnoremap <C-c> "+y
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+p
"}}}

" {{{ copy paste to clipboard cross files
set clipboard=unnamed

"}}}

" {{{ vimwiki
let g:vimwiki_list = [{'path': '~/Desktop/Notlar/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab
"}}}


