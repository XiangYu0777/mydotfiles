" 定义快捷键前缀，即 <Leader>
let mapleader=";"
" 开启文件类型侦测
filetype off
" 更具侦测到的不同类型加载不同的插件
filetype plugin indent on

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
syntax on
syntax enable
set nocompatible
filetype off

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

 
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
" 用浅色高亮当前行

set tabstop=4
" Tab键的宽度
set softtabstop=4
set shiftwidth=4
" 统一缩进为4

set number
set spell

set ruler
" 在编辑过程中，在右下角显示光标位置的状态行
set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离 

set background=dark
colorscheme solarized
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
 set ignorecase
 set smartcase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


" crontab problem 解决 
set backupskip=/tmp/*,/private/tmp/*
