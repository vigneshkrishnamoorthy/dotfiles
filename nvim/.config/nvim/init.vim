set nocompatible
filetype plugin on
filetype indent on

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages vundle
Plugin 'VundleVim/Vundle.vim'

" Interface
" - file explorer and finder
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xuyuanp/nerdtree-git-plugin'
" - airline on the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" - use splits effectively
Plugin 'mattboehm/vim-accordion'
" - create a start page for use
Plugin 'mhinz/vim-startify'
" - colors and themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/Colour-Sampler-Pack'

" Syntax and Language Options
" - syntastic
Plugin 'scrooloose/syntastic'
" - covers json files
Plugin 'elzr/vim-json'
" - miscellaneous
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'davidbeckingsale/writegood.vim'
Plugin 'tpope/vim-speeddating'
" - other languages (latex/R)
Plugin 'vim-latex/vim-latex'

" R Integration
Plugin 'jalvesaq/Nvim-R'

" Python Integration
Plugin 'klen/python-mode'

" Markdown Integration
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" External Integrations
" - github
Plugin 'tpope/vim-fugitive'
" - pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
" - ledger
Plugin 'ledger/vim-ledger'
" - vimwiki/org-mode
Plugin 'vimwiki/vimwiki.git'
Plugin 'jceb/vim-orgmode'

call vundle#end()

filetype plugin on

" ==== Sensible Settings ==== "

colorscheme badwolf " colors

syntax on                   " Enables syntax highlighting
set hidden                  " hides buffers
set wrap                    " soft wrap text
set incsearch               " fuzzy searching
set number                  " show line numbers

set tabstop=4       " set tab size to 4 spaces
set expandtab       " insert spaces instead of tabs
set shiftround      " indent to nearest tabstop
set numberwidth=4   " width of line number field
set shiftwidth=4    " default number of spaces for indentation

set autochdir       " autoupdate current director
set backup          " automatic backup
set cursorline      " show cursor line

set noerrorbells    " disable annoyring system bells
set noswapfile      " disable swap files for the files
set showmatch       " show matching parantheses

set ignorecase      " ignore case when searching

set clipboard+=unnamed     " Use system clipboard

set go+=a           " visual selection automatically copied to clipboard
set title           " changes the terminal's title
set autoread        " reload the file when it has been changed outside of vim

set spelllang=en_us         " define default dictionary for spell checking

" -- list of files ignored by vim
set wildignore=*.swp,*.bak,*.pyc,*.class,*.py~
set nobackup
set nowritebackup

" ==== Movement and Key Bindings Settings ==== "

let mapleader = "\<TAB>"

" /Quit Stuff
nnoremap <Leader>q :q<CR>

" /split navigation
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" /buffer navigation
nnoremap <Leader>b :bnext<CR>

" :tab navigation
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

" ==== Plugin Settings ==== "

" - Split navigation and creation
set splitright
set splitbelow

" - NERDTree
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
" /git-nerd-tree configuration
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" - Airline
let g:airline#extensions#tabline#enabled = 1
let g:AirlineTheme='papercolor'

" - Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" - Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ==== Python Settings ==== "

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=4
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" ==== Markdown/Vim-Pandoc Settings ==== "
" TODO: Fix bibliography tools in vim-pandoc
" TODO: Execute text formatting using <leader> 
" TODO: button remaps for quick pandoc pdfs

let g:vim_markdown_math = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
" - pandoc settings
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#modules#disabled = ["folding"]
" - vim-ledger settings
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '   -'
let g:ledger_fold_blanks = 0
let g:ledger_detailed_first = 1
