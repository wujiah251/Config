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
set shiftwidth=4

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
set noundofile


" 出错时不要发出响声
set noerrorbells

" 命令模式下，底部操作指令如果按下Tab键自动补全
set wildmenu
set wildmode=longest:list,full

" vundle

filetype off
" 设置vim路径
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$HOME/.vim/colors/molokai

call vundle#begin()
filetype plugin indent on
Plugin 'VundleVim/Vundle.Vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>


" 配置主题
colorscheme molokai
"colorscheme gruvbox
"colorscheme solarized
"colorscheme one

" 背景透明
hi Normal ctermfg=252 ctermbg=none

"配置格式化
let g:formatterpath = ['/some/path/to/a/folder', '/home/superman/formatters']
au BufWrite * :Autoformat

"往前跳和往后跳的快捷键为Ctrl+O以及Ctrl+I
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_previous_completion=['<c-p>']

set completeopt=menu  "关闭preview window
"let g:ycm_add_preview_to_completeopt =0
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_always_populate_location_list = 0

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项

let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist

"inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
let g:ycm_max_num_identifier_candidates = 50
let g:ycm_auto_trigger = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>'
"sub commands
"YcmCompleter RefactorRename :重命名
"YcmCompleter GoToSymbol
nnoremap <leader>go :YcmCompleter GoTo<CR> "跳转
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR> "跳转到定义或声明
nnoremap <leader>gt :YcmCompleter GetType<CR> "get类型
nmap gi :YcmCompleter GoToInclude<CR>   "跳转到include、声明或定义
nmap gt :YcmCompleter GoToImprecise<CR> "跳转到实现
nmap gr :YcmCompleter GoToReferences<CR> "跳转到引用
nmap fi :YcmCompleter FixIt<CR> "根据Ycm的建议修复错误
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR> "重新编译和诊断
"nmap <F4> :YcmDiags<CR>  "F4进行诊断
"noremap <leader>gl :YcmCompleter GoToDeclaration<CR> "跳转到声明
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  "跳转到定义


"highlight Pmenu ctermfg=4 ctermbg=8 guifg=#ffffff guibg=#000000
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
"提示不再是粉红色(pink)
call vundle#end()
