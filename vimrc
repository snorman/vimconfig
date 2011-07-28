"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Loading Pathogen and plugins
filetype off                        " Pathogen functions must be invoked
                                    " before filetype plugin indent is on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set history=700                     " Lines of history for vim to remember
filetype plugin indent on           " Enable filetype plugin
set autoread                        " auto read when file is changed externally
let mapleader = ","                 " changes <leader> to ,
set nocompatible                    " Removes vi compatibility from Vim
" Autoload vimrc when it is edited
autocmd! bufwritepost vimrc source ~/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                        " 
set wildmode=list:longest           " 
set ruler                           " Ensures status line w/ current cursor pos
set hidden                          " Change buffer without saving
set backspace=indent,eol,start      " Set backspace config
set ignorecase                      " Combined with smartcase, makes case-sensitive
set smartcase                       " search intelligent.
set gdefault                        " substitutions globally on lines
set incsearch                       " Make search act like in modern browsers
set showmatch                       " Show matching brackets when text indicator is over them
set hlsearch                        " Highlight search things
nnoremap <leader><space> :noh<cr>   " clears all highlighting ,<space>
nnoremap / /\v                      " Switches to normal Perl/Python compatible
vnoremap / /\v                      " regex formatting.
set list                            " displays tabs and EOL characters
set listchars=tab:▸\ ,eol:¬         " changes tab and eol characters to something more visible
set relativenumber                  " how far away each line is from current
set wrap                            " Wraps text that goes past the width of the screen
set textwidth=79                    " Automatic wrapping at column 79
set formatoptions=qrn1              " q allows formatting of comments with gq command
                                    " r autoinsert comment leader after hitting enter in insert mode
                                    " n 
                                    " 1 
set colorcolumn=85                  " Shows a colored column at 85 characters
set modelines=0                     " Prevents exploits w/ modelines in files
set scrolloff=3                     " Scrolls text so that at least 3 lines visible above and below the cursor
set showmode                        " shows when you are in insert mode
set showcmd                         " show the number of lines/characters in a visual selection
set visualbell                      " disables beeping
set cursorline                      " highlights the current line the cursor is on
set ttyfast                         " improves redrawing
set laststatus=2                    " Always show the status line
set titlestring=%f title            " display the filename in terminal window
set rulerformat=%l:%c ruler         " Display the current column, line
set splitbelow                      " split windows below current window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                       " Enable syntax highlight
set gfn=Menlo:h14                   " set the font type and size
set shell=/bin/bash                 " forces vim to use the bourne shell

if has("gui_running")
    set guioptions-=T               " disables the toolbar in macvim
    set t_Co=256                    " forces using 256 colors
    set background=dark             " Tells vim that the background is a dark color
    colorscheme molokai             " color scheme from textmate
else
    set background=dark             " 
    colorscheme molokai             " 
endif

set encoding=utf-8                  " 
set ffs=unix,dos,mac                " Default file types
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disabling backup features since the code I will be working with is in a repository
set nobackup
set nowb
set noswapfile
set undodir=/tmp
set undofile
au FocusLost * :wa                  " Save on losing focus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4                       " Width of tab character
set shiftwidth=4                    " Determines amount of whitespace to add in normal
set softtabstop=4                   " Fine tunes the amount of white space to be added
set expandtab                       " use space instead of tabs
set smarttab                        " use shiftwidth setting for inserting tabs when at the beginning of a line
set autoindent                      " Use current line's indent level to set new line
set smartindent                     " Intelligently guess indentation from prev line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-h> <C-w>h               " Navigation between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader>bd :Bclose<cr>          " Close the current buffer
map <leader>ba :1,300 bd!<cr>       " Close all open buffers

map <leader>cd :cd %:p:h<cr>        " changes to directory of the current open buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ss :setlocal spell!<cr> " Toggle spellcheck
inoremap <F1> <ESC>                 " Disable F1 help accidently getting hit
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :                        " ; = :
inoremap jj <ESC>                   " return to normal mode with jj

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuffer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :w\|!python % <CR>         " Save current script and execute
" Delete white space from the ends of lines when saving a python file
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
