""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A vimrc file.												   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:	Gabriele Puliti <gabriele.puliti@gmail.com>    "
" Alias: Wabri (https://github.com/Wabri)					   "
" Last change:	2019 5 24									   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To use it, copy it to ~/.vimrc 							   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Map Leader, used for shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader =" "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Map Leader, used for shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set vb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HighLight search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto indent for brackets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap {<CR> {<CR>}<Esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins will be downloaded under the specified directory.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Declare the list of plugins.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Global default settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-sensible'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocompletition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'lifepillar/vim-mucomplete'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax language
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'

" => Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'

" => I3wm
Plug 'potatoesMaster/i3-vim-syntax'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nanotech/jellybeans.vim' ", { 'tag': 'v1.6' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utils
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'matze/vim-move'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'tpope/vim-surround'
Plug 'amix/open_file_under_cursor.vim'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => List ends here.
" => Plugins become visible to Vim after this call.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Map Leader, used for shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader =" "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable visual bell sound (thanks for this features)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set vb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HighLight search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys in Normal mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys in Insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easy write and quit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easier write
nmap <leader>w :w!<cr>
nmap <leader>W :wq<cr>
" easier quit
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Select all
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a ggVG

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Abilitate rainbow parentesis syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-move key - move selection with Control
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Scrolling options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scrolling
inoremap <C-E> <C-X><C-E>
"scrolling on insert
inoremap <C-Y> <C-X><C-Y>
" keep 5 lines between the cursor and the edge of the screen
set scrolloff=6

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cursor settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default save to the original file.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Do not keep a backup file, use versions instead
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Put the number of the line at the left of the text,
" => with the relative distance between the line focused.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Always set autoindenting on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
inoremap {<CR> {<CR>}<Esc>O

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on

"syntax enable
set background=dark
colorscheme jellybeans

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocompletition settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt-=longest
set completeopt+=noselect,preview
set shortmess+=c
let g:jedi#popup_on_dot = 1 " It may be 1 as well
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 0
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python indent pep8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_pep8_indent_hang_closing = 0
let g:python_pep8_indent_multiline_string = -2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default split to below and right.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 1 tab == 4 spaces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This can allow to switch to bash terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-d> :sh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Uncomment to prevent non-normal modes showing in powerline
" => and below powerline.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set noshowmode
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>f :Goyo \| set linebreak<CR>

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  set scrolloff=999
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
  set scrolloff=7
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Compile document, be it groff/LaTeX/markdown/etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>c :w! \| !compiler <c-r>%<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open corresponding .pdf/.html or preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>o :!opout <c-r>%<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '➔' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This is the nerd tree indicator for git status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
let g:nerdtree_tabs_open_on_console_startup=1
map <C-\> :NERDTreeToggle<CR>
" This will close vim if only nerd tree tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This is the map to switch between splitted editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Space>h <C-w>h
map <Space>j <C-w>j
map <Space>k <C-w>k
map <Space>l <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This quit all tab and exit from vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map qZ :qall<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Latex settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:polyglot_disable = ['latex']
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Enable folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This abilitate the copy and paste to clipboard (on debian
" => you need to install: apt install vim-gnome
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"paste from outside buffer
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>

"copy to outside buffer
vnoremap <leader>y "+y

" This method is deprecated "
"vnoremap <F2> "+y
"map <F3> "+P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Switch to alternate file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Space>> :bnext<cr>
map <Space>< :bprevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-CtrlSpace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nocompatible
set hidden
let g:CtrlSpaceDefaultMappingKey = "<TAB>"
let g:CtrlSpaceSymbols = { "CS": "∥","ALL": "✹" }
let g:CtrlSpaceUseTabline = 1
hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold gui=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE gui=NONE
hi CtrlSpaceFound    ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold gui=bold
hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE gui=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Automatically deletes all end line trailing whitespaces
" => on save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Add optional packages.
" => The matchit plugin makes the % command work better,
" => but it is not backwards compatible.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('syntax') && has('eval')
  packadd matchit
endif
