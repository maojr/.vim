set number
set nocompatible

"Vim display tab:(>----),space:(-)
set list
set listchars=tab:>-,trail:-

"tab,space settings
set tabstop=4 " set the width of a TAB
set shiftwidth=4
set softtabstop=2 " set the number of columns for hitting a TAB key
set expandtab " Expand TABs to spaces　

"set colortheme
colorscheme desert
filetype plugin on

"You-complete-me settings
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion  = 1
