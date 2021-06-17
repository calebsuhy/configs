" --- Plugins (Current Plugin Manager: vim-plug) ---

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter' " quickly comment out lines of code with <leader><cc> or <leader><cs> (use <leader><cu> to undo)
Plug 'jiangmiao/auto-pairs' " autocompletes () {} and []
Plug 'ycm-core/YouCompleteMe' " autocomplete for almost every language
Plug 'easymotion/vim-easymotion' " easy motion navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " see below
Plug 'junegunn/fzf.vim' " enables fzf search within vim with <CTRL-p>
Plug 'preservim/nerdtree' " file tree access with <CTRL-n>
Plug 'mattn/emmet-vim' " emmet.vim for web dev stuff

call plug#end()

" --- Commands ---

" visual settings
syntax on " enables syntax highlighting
colorscheme peachpuff " sets colorscheme to peachpuff
set number relativenumber " enables hybrid line numbers (mix of relative + absolute)
set nowrap " turns off line wrapping
set ruler " displays the line and column number in bottom right

" remap leader key
let mapleader="," " remaps leader key from \ to ,

" press <leader><space> to get rid of highlights post-search
nnoremap <leader><space> :nohlsearch<CR>

" tab settings
set tabstop=4 " vim reads tab characters as 4 columns
set softtabstop=4 " pressing <TAB> inserts 4 columns
set shiftwidth=4 " << and >> commands shift lines 4 columns to the left and right respectively
set expandtab " tabs are turned into the equivalent ammount of spaces
autocmd FileType html setlocal shiftwidth=2 tabstop=2 wrap linebreak " changes settings for html

" searching
set incsearch " enables incremental searching
set hlsearch " highlights search results
set smartcase " ignores case until I enter uppercase letter

" indent settings
set autoindent " vim does its best to indent for me
filetype plugin indent on " enables smart indenting based on the type of file

" plugin settings
let g:ycm_show_diagnostics_ui=0 " turns off YCM linter
set completeopt-=preview " turns off the YCM preview window

" remap easymotion settings -> default is <leader><leader><motion>, this makes it <leader><motion>
map <leader> <Plug>(easymotion-prefix)

" enable normal backspacking
set backspace=indent,eol,start

" set vim.swp file storage directory
set directory^=$HOME/.vim/swapfiles//

" toggle nerd tree with <CTRL-n>
map <C-n> :NERDTreeToggle<CR>

" remap :Files fzf command to <CTRL-p>
nnoremap <C-p> :Files<Cr>
