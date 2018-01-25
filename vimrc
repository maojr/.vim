" Mao's vimfiles
" Reference - LearnVimscriptTheHardWay
" http://learnvimscriptthehardway.stevelosh.com/
set nocompatible
set ruler
set undofile
set undodir=~/.vim/vimundos
set visualbell
set autoindent
"set encoding=utf-8

"set Vim's numberwidth
set number
set relativenumber
set numberwidth=1

"Vim display tab:(>----),space:(-)
set list
set listchars=tab:>-,trail:-

"Enable mouse support
"set mouse=a
"set backspace=2

"leave the buffer content on terminal when exit
set t_ti= t_te=

"tab,space settings - all tabs to expand to four spaces
set tabstop=4     " set the width of a TAB
set softtabstop=4 " set the number of columns for hitting a TAB key
set expandtab     " Expand TABs to spaces　
set shiftwidth=4
"shiftround round indent to multiple of shiftwidth
set shiftround

"search settings
set gdefault
"set hlsearch
set incsearch
set smartcase
set showmatch
set ignorecase

"keeps the cursor in the middle of the page
set scrolloff=5
"to enable 256 colors in vim
set t_Co=256

set wrap
set autoread
"set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

"encodings
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"set colortheme
colorscheme slate
syntax on
filetype plugin on

"add custom headers
autocmd bufnewfile *.py so $HOME/.vim/template/py.template

"underscore
"set cursorline
"show statusline
set laststatus=2 "showstatusline

"config hjkl keys
set nowrap
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"Configurations for gitgutter
"When you make a change to a file tracked by git, the diff markers appear
"automatically. The delay is governed by vim's update option
set updatetime=200

"vim-airline
"let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#buffer_nr_show = 0


"hide all when editing
"excerpt from stackoverflow:
"http://stackoverflow.com/questions/2404879/in-vim-how-can-i-have-a-permenant-status-line-showing-me-the-name-of-the-curren
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
"nnoremap <S-h> :call ToggleHiddenAll()<CR>

"vim's mapping keys
"e - Move to the end of a word
"w - Move forward to the beginning of a word
"b - Move backward to the begining of a word
"imap - mapping in Insert Mode
"Note - always use norecursive mapping
"map-unmap imap-iunmap
noremap <up>    <nop>
noremap <down>  <nop>
noremap <left>  <nop>
noremap <right> <nop>
inoremap jk <esc>
inoremap <c-d> <esc>ddO
inoremap <c-u> <esc>vawUea
inoremap <esc> <nop>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
onoremap p i(
"refer to - http://learnvimscriptthehardway.stevelosh.com/chapters/16.html
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
"vim's abbreviations
"@@ = myemail --- input my email
"mb --- input my blogsite

"save on losing focus
"master the use of autocommands[au]
au FocusLost * :wa
autocmd BufNewFile * :write
augroup learn_augroup
    autocmd BufWrite * :sleep 200m
augroup end

"gofmt & godef plugins
"go fmt the golang code when save
au BufWritePost *.go silent !gofmt -w %
let g:godef_split=0

"NERDCommenter
let g:NERDSpaceDelims=1
