" 显示行数
set number

" 不与vi兼容
set nocompatible

" 语法高亮
syntax on

" 在底部显示当前是命令模式还是插入模式
set showmode

" 支持使用鼠标
set mouse=a

" 使用utf-8编码
set encoding=utf-8

" 启用256色
set t_Co=256

" 开启文件类型检查
filetype indent on

" 缩进
set autoindent

" Tab大小
set tabstop=4

" 自动将tab转换为空格
set expandtab
set softtabstop=4


" 自动折行
set wrap

" 光标遇到括号时，自动对应另一个括号
set showmatch
" 高亮显示搜索结果
set hlsearch
" 搜索时自动跳转到第一个匹配结果
set incsearch
" 忽略大小写搜索
set ignorecase
" 如果开启ignorecase，那么对于只有一个大写字母的搜索词，将会大小写敏感

"打开英文单词的拼写检查
set spell spelllang=en_us
"不差ungjian备份文件
set nobackup
"不创建交换文件
set noswapfile
"保留撤销历史
set undofile


" 出错时不要发出响声
set noerrorbells
" 视觉提示
set visualbell

" 命令模式下，底部操作指令如果按下Tab键自动补全
set wildmenu
set wildmode=longest:list,full
