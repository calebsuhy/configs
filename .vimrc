" --- Plugins (Current Plugin Manager: vim-plug) ---

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter' " quickly comment out lines of code with <leader><cc> or <leader><cs> (use <leader><cu> to undo)
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc autocomplete engine
Plug 'jiangmiao/auto-pairs' " autocompletes () {} and []
Plug 'easymotion/vim-easymotion' " easy motion navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " see below
Plug 'junegunn/fzf.vim' " enables fzf search within vim with <CTRL-p>
Plug 'preservim/nerdtree' " file tree access with <CTRL-n>
Plug 'mattn/emmet-vim' " emmet.vim for web dev stuff
Plug 'morhetz/gruvbox' " gruvbox theme

call plug#end()

" --- Commands ---

" visual settings
syntax on " enables syntax highlighting
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark="hard" 
set number relativenumber " enables hybrid line numbers (mix of relative + absolute)
set nowrap " turns off line wrapping
set ruler " displays the line and column number in bottom right
set colorcolumn=81 " adds a visual column at 81 characters

" git settings
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73

" remap leader key
let mapleader="," " remaps leader key from \ to ,

" press <leader><space> to get rid of highlights post-search
nnoremap <leader><space> :nohlsearch<CR>

" tab settings
set tabstop=4 " vim reads tab characters as 4 columns
set softtabstop=4 " pressing <TAB> inserts 4 columns
set shiftwidth=4 " << and >> commands shift lines 4 columns to the left and right respectively
set expandtab " tabs are turned into the equivalent ammount of spaces
autocmd FileType html set softtabstop=2 shiftwidth=2 tabstop=2 wrap linebreak " changes settings for html

" searching
set incsearch " enables incremental searching
set hlsearch " highlights search results
set smartcase " ignores case until I enter uppercase letter

" indent settings
set autoindent " vim does its best to indent for me
filetype plugin indent on " enables smart indenting based on the type of file

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

" tab completion for coc.vim
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
