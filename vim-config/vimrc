" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
" set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" This is Myself
set number
set backspace=2
set fileencodings=utf-8
set encoding=utf-8
set termencoding=utf-8

set ambiwidth=double
"按C语言格式缩进
set cindent
"设置Tab长度为4格
set tabstop=4
set expandtab

set t_Co=256
set background=dark
"let g:lightline = {}
"let g:lightline.colorscheme = 'neodark'
"let g:neodark#use_256color = 1
let g:seoul256_srgb = 1
colorscheme seoul256

"设置当前行高亮
set cursorline
"hi Cursorline cterm=NONE ctermbg=59 ctermfg=NONE

" for seoul256-light
" hi Cursorline cterm=NONE ctermbg=14 ctermfg=NONE

hi Comment ctermfg=67

"设置自动缩进长度为4格
set shiftwidth=4
"继承前一行的缩进方式，特别适用于多行注释
set autoindent

" set no swap file
set noswapfile

"let loaded_matchparen=1


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
"inoremap < <><ESC>i

map <C-n> :NERDTreeToggle<CR>
imap <C-n> :NERDTreeToggle<CR>

map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
map <C-b> :tabnew<CR>
map <C-s> :w<CR>
vmap <C-s> <C-c>:w<CR>
imap <C-s> <esc>:w<CR>

imap <C-b> <esc>:tabnew<CR>i
imap <C-left> <esc>:tabp<CR>
imap <C-right> <esc>:tabn<CR>

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

set nowrap
" let g:seoul256_srgb = 1
set completeopt-=preview
let g:enable_italic_font=1
let g:airline_theme='colorsbox'

set termguicolors
colorscheme seoul256-light
set background=light

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


filetype on
filetype plugin on
filetype indent on

autocmd BufNewFile *.c,*.php,*.sh,*.py,*.go exec ":call SetTitle()"
au BufRead,BufNewFile *.c,*.go exec ":call SetNoexpandTab()"
au BufRead,BufNewFile *.html,*.css exec ":call SetTabWidth()"

func SetNoexpandTab()
    set noexpandtab
"    if &filetype == 'go'
"        set noexpandtab
"    endif
"
"    if &filetype == 'c'
"        set noexpandtab
"    endif
endfunc

func SetTabWidth()
    set tabstop=2
    set shiftwidth=2
endfunc

func SetTitle()
	if &filetype == 'python'
		call setline(1, "#!/lnpp/py37/bin/python3")
		call setline(2, "")
		call setline(3, "try:")
		call setline(4, "except:")
	endif
    
    if &filetype == 'php'
        call setline(1, "<?php")
        call setline(2,"")
    endif

	if &filetype == 'sh'
		call setline(1,"#!/bin/bash")
		call setline(2,"")
	endif

	if &filetype == 'c'
		call setline(1,"#include <stdio.h>")
		call setline(2,"#include <stdlib.h>")
		call setline(3,"")
		call setline(4,"int main(int argc, char *argv[]) {")
		call setline(5,"\treturn 0;")
		call setline(6,"}")
	endif
	if &filetype == 'go'
		call setline(1,"package main")
		call setline(2,"")
		call setline(3,"import (")
		call setline(4,"    \"fmt\"")
		call setline(5,")")
		call setline(6,"")
		call setline(7,"func main () {")
        call setline(8,"")
        call setline(9,"}")
        call setline(10,"")
	endif
endfunc

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

