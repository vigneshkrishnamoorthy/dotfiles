set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages vundle
Plugin 'VundleVim/Vundle.vim'

" Interface
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'mattboehm/vim-accordion'

" Syntax
Plugin 'scrooloose/syntastic'

" Languages
Plugin 'tpope/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'klen/python-mode'
Plugin 'vim-latex/vim-latex'
Plugin 'Vim-R-plugin2'

" Completion
Plugin 'ervandew/supertab'

" Code Display
Plugin 'flazz/vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'

" Integrations
Plugin 'tpope/vim-fugitive'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim' "Have to set up vim-shell

call vundle#end()

" ==== Plugin Settings ==== "

"Split navigation and creation
" /creation
set splitright
set splitbelow
" /navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"NERDTree
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

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

"Supertab
" /scrolls down the list instead of up
let g:SuperTabDefaultCompletionType = "<c-n>"

"Vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

"Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ==== Sensible Settings ==== "

colorscheme jellybeans  " colors

syntax on   " Enables syntax highlighting
set hidden  " hides buffers
set wrap linebreak nolist   " soft wrap text
set incsearch   " fuzzy searching
set number      " show line numbers

set tabstop=4       " set tab size to 4 spaces
set expandtab       " insert spaces instead of tabs
set shiftround      " indent to nearest tabstop
set numberwidth=4   " width of line number field
set shiftwidth=4    " default number of spaces for indentation

set autochdir       " autoupdate current director
set backup          " automatic backup
set cursorline      " show cursor line

set noerrorbells    " disable annoyring system bells

" Relative numbering to Numbering toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
