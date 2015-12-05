set number
set nocompatible

"Vim中显示Tab(>----以区分空格),并显示行尾的空格(-)
set list
set listchars=tab:>-,trail:-

"使用4个空格缩进(soft tab)
set tabstop=4 " set the width of a TAB
set shiftwidth=4
set softtabstop=2 " set the number of columns for hitting a TAB key
set expandtab " Expand TABs to spaces　

"设置配色主题
colorscheme desert
filetype plugin on

"You-complete-me 配置
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion  = 1
