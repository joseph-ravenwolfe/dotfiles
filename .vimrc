"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" SYSTEM """"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                      " DO NOT USE VI
set rtp+=~/.vim/bundle/vundle/        " SET VUNDLER PATH
call vundle#rc()                      " USE VUNDLER
set shell=/bin/bash                   " FIX RVM

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""" GITHUB BUNDLES """"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'terryma/vim-smooth-scroll.git'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'mattn/emmet-vim'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-surround'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""" SYNTAX HIGHLIGHTING """"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""" FILE TYPE DETECTION """""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""" COLOR SCHEME """""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme Tomorrow-Night-Eighties
set guifont=Monaco:h17

set t_Co=256                           " 256 colors

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" SPACING AND WRAPPING """""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                          " USE SOFT TABS
set softtabstop=2                      " USE TWO SPACES FOR SOFT TABS
set shiftwidth=2                       " SET << >> INDENTATION TO TWO SPACES
set tabstop=2                          " USE TWO SPACES FOR HARD TABS (DISPLAY)
set nowrap                             " DISABLE SOFT WRAPPING
set textwidth=80                       " SET SOFT WRAP TO 80 CHARACTERS
set clipboard=unnamed                  " YANK TO SYSTEM CLIPBOARD
set laststatus=2                       " ALWAYS SHOW A STATUS LINE FOR
set noequalalways                      " ACCORDION EFFECT BETWEEN SPLITS
set winwidth=80                        " EXPAND FOCUSED V-SPLITS TO 80 COLUMNS
set winminwidth=10                     " COLLAPSE UNFOCUSED V-SPLITS TO 10 COLUMNS
set winheight=15                       " EXPAND FOCUSED SPLITS TO 15 COLUMNS
set winminheight=2                     " COLLAPSE UNFOCUSED SPLITS TO 2 COLUMNS


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""" INTERFACE """""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber                     " DISPLAY RELATIVE LINE NUMBER
set number                             " DISPLAY ACTUAL NUMBER FOR CURRENT LINE
set showcmd                            " DISPLAY THE CURRENT COMMAND
set visualbell                         " ENABLE VISUAL BELL
set ruler                              " DISPLAY LINE AND COLUMN NUMBER
set wildmode=longest,list,full         " ADD A MENU BAR
set wildmenu                           " ENABLE MENU LISTING SUPPORT
set splitright                         " SPLIT TO THE RIGHT INSTEAD OF LEFT
set splitbelow                         " SPLIT TO THE BOTTOM INSTEAD OF TOP


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""" EDITING """"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent                        " INDENT INWARDS IN BLOCKS/FUNCTIONS
set showmode                           " DISPLAY THE EDITING MODE
set showmatch                          " HIGHLIGHT CORRESPONDING BRACKETS,
                                       " COMMAS, PARENS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""" KEYBOARD MAPPINGS """""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" SET LEADER TO COMMA
let mapleader = ','

" SET PAGING SHORTCUTS TO USE SMOOTH SCROLL
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 12, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 12, 1)<CR>

" TURN OFF SEARCHING HIGHLIGHTING ON ENTER
noremap <cr> :nohl<cr><cr>

" REMAP ARROWS TO CYCLE AND EXPAND THROUGH SPLITS
nnoremap <Up> <C-W><C-K><C-W><C-\|>
nnoremap <Down> <C-W><C-J><C-W><C-\|>
nnoremap <Left> <C-W><C-H><C-W><C-\|>
nnoremap <Right> <C-W><C-L><C-W><C-\|>

" CLOSE SPLIT
nnoremap <leader>w :bd<cr>

" RUN TESTS
nmap <leader>t :w\|:!rspec spec; rubocop<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""" SEARCHING """""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                          " ENABLE SEARCH AS YOU TYPE
set hlsearch                           " HIGHLIGHT SEARCHES
set ignorecase smartcase               " CASE INSENSITIVE REGULAR EXPRESSIONS,
                                       " UNLESS MIXED CASE IN USE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""" FILE STORAGE """""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread                           " AUTOMATICALLY RELOAD FILE IF CHANGED
set noswapfile                         " DO NOT USE A SWAP FILE
set nobackup                           " DO NOT CREATE A SWAP FILE
set nowritebackup                      " DO NOT SAVE TO A SWAP FILE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" AUTO RELOAD VIMRC """"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup myvimrc
  au!
  au BufWritePost .vimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" CONFIGURE CTRLP """"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files = 20000

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|build\|vendor|data\|log\|tmp$',
  \ 'file': '\v\.(exe|jpg|png|svg|xml|sql|properties|jar|ttf|LRO|class|log|gem|pem)$',
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" CUSTOM AUTOCOMMANDS """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " CLEAR ALL AUTOCMDS IN THE GROUP
  autocmd!
  " FILE TYPES
  autocmd BufRead *.sql set filetype=mysql
  autocmd BufRead *.thor set filetype=ruby
  " JUMP TO LAST CURSOR POSITION UNLESS IT'S INVALID OR IN AN EVENT HANDLER
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
  " LEAVE THE RETURN KEY ALONE WHEN IN COMMAND LINE WINDOWS, SINCE IT'S USED
  " TO RUN COMMANDS THERE.
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" STRIP WHITESPACE ON SAVE """"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" INDENT OR AUTOCOMPLETE WITH TAB KEY """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

nnoremap <leader><leader> <c-^>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""" SHOW CURRENT FILE IN NERDTREE """"""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" RETURNS TRUE IF NERDTREE IS OPEN/ACTIVE
"
function! rc:isNTOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" RETURNS TRUE IF FOCUSED WINDOW IS NERDTREE WINDOW
"
function! rc:isNTFocused()
  return -1 != match(expand('%'), 'NERD_Tree')
endfunction

" CALLS NERDTREEFIND IF NERDTREE IS ACTIVE, CURRENT WINDOW CONTAINS A
" MODIFIABLE FILE, AND WE'RE NOT IN VIMDIFF
"
function! rc:syncTree()
  if &modifiable && rc:isNTOpen() && !rc:isNTFocused() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

autocmd BufEnter * call rc:syncTree()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" CLOSE VIM IF NERDTREE IS THE ONLY OPEN BUFFER """""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" OPEN ALL NEW FILES IN VERTICAL SPLIT """""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufAdd,BufNewFile * nested
  \ if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) > 1 |
  \   vertical sblast |
  \ endif

