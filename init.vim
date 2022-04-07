"==========Plugin manager begins=========
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
"==========Plugin manager ended==========

"Keyboard Shortcuts======================
" set leader key
"let g:mapleader = "\<Space>" "set leader to space if you want
let mapleader = '\'      "Leader key \ olarak ata.
nmap <leader>q :q!<CR>  "quit vim

"NERDTree================================
"nnoremap <leader>n :NERDTreeFocus<CR>
"Show and Hide NERDTree. Better than above code 
nnoremap <leader>n :NERDTreeToggle<CR>

"fzf opens Files
nnoremap <C-f> :Files<CR>
"fzf opens Buffers
nnoremap <C-b> :Buffers<CR>
"fzf search any text in full screen
nnoremap <C-t> :Rg! 


"=============================
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
"============================

"End NERDTree=================

"Some Settings=============
"colorscheme Installed
colorscheme gruvbox
set paste "Dont format pasted copy

"Folding Method
set foldmethod=marker

"https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set wrap                                "wrap text, no long lines
set linebreak                           "no long lines
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                                           " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

"Benim eklediklerim======================
set ignorecase
filetype plugin indent on "required
set nocompatible "be iMproved, required
filetype on       "required


"abbreviations===========================
" personal abbreviations auto complete words
" Add personal words here
abbr string String
