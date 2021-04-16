" --- Plugins (Current Plugin Manager: vim-plug) ---

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

call plug#end()

" --- Commands ---

" visual settings
syntax on " enables syntax highlighting
colorscheme gruvbox " sets colorscheme to gruvbox
let g:gruvbox_contrast_dark='hard' " sets gruvbox contrast to hard, default is medium
set background=dark " sets background to dark mode
set number relativenumber " enables hybrid line numbers (mix of relative + absolute)
set nowrap " turns off line wrapping
let g:airline_theme='gruvbox' " sets status bar theme to gruvbox theme
set colorcolumn=80 " enables 80 character column

" remap leader key
let mapleader="," " remaps leader key from \ to ,

" press <leader><space> to get rid of highlights post-search
nnoremap <leader><space> :nohlsearch<CR>

" tab settings
set tabstop=4 " vim reads tab characters as 4 columns
set softtabstop=4 " pressing <TAB> inserts 4 columns
set shiftwidth=4 " << and >> commands shift lines 4 columns to the left and right respectively
set expandtab " tabs are turned into the equivalent ammount of spaces

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
let g:airline#extensions#whitespace#mixed_indent_algo=1 " better white space detection algo that works with comments in c/c++

" remap easymotion settings -> default is <leader><leader><motion>, this makes it <leader><motion>
map <leader> <Plug>(easymotion-prefix)

" enable normal backspacking
set backspace=indent,eol,start

" set vim.swp file storage directory
set directory^=$HOME/.vim/swapfiles//

" toggle nerd tree
map <C-n> :NERDTreeToggle<CR>

" remap :Files fzf command to <CTRL-p>
nnoremap <C-p> :Files<Cr>
