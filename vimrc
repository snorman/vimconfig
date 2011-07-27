"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Loading Pathogen and plugins
filetype off                    " Pathogen functions must be invoked
                                " before filetype plugin indent is on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set history=700                 " Lines of history for vim to remember
filetype plugin indent on       " Enable filetype plugin
set autoread                    " auto read when file is changed externally
let mapleader = ","             " changes <leader> to ,

" Autoload vimrc when it is edited
autocmd! bufwritepost vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                    " Enable wild menu
set wildmode=list:longest       " 
set ruler                       " Ensures status line w/ current cursor pos
set hidden                      " Change buffer without saving
set backspace=indent,eol,start  " Set backspace config
set ignorecase                  " Combined with smartcase, makes case-sensitive
set smartcase                   " search intelligent.
set gdefault                    " substitutions globally on lines
set incsearch                   " These three combined together highlight 
set showmatch                   " search results as you type them into a regex
set hlsearch                    " search string.
nnoremap <leader><space> :noh<cr> " clears all highlighting ,<space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Parenthesis/bracket expanding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuffer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " Removes vi compatibility from Vim
set modelines=0                 " Prevents exploits w/ modelines in files
set tabstop=4                   " Width of tab character
set shiftwidth=4                " Determines amount of whitespace to add in normal
set softtabstop=4               " Fine tunes the amount of white space to be added
set expandtab                   " use space instead of tabs
set encoding=utf-8              " 
set scrolloff=3                 " 
set autoindent                  " Use current line's indent level to set new line
set smartindent                 " Intelligently guess indentation from prev line
set showmode                    " 
set showcmd                     " 
set visualbell                  " 
set cursorline                  " 
set ttyfast                     " 
set laststatus=2                " 
set relativenumber              " how far away each line is from current
set undofile                    " creates <FILENAME>.un~ when editing

nnoremap / /\v                  " Switches to normal Perl/Python compatible
vnoremap / /\v                  " regex formatting.

set wrap                        " 
set textwidth=79                " 
set formatoptions=qrn1          " 
set colorcolumn=85              " Shows a colored column at 85 characters

set list
set listchars=tab:▸\ ,eol:¬

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :

au FocusLost * :wa              " Save on losing focus
inoremap jj <ESC>               " normal mode with jj

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

colorscheme molokai
set spell                       " Auto spell checks comments not code
syntax enable                   " enabled syntax highlights
map <F2> :w\|!python % <CR>     " Save current script and execute
