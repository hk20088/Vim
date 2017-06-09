set nocompatible          "不要兼容vi
filetype off              "必须的设置：

set go=                   "取消菜单和工具栏，set 表示一般性设置，go是gui option的缩写，等于空代表取消
set t_Co=256              "设置配色方案是256
syntax enable             "开启语法高亮
"autocmd! bufwritepost _vimrc source %         "自动载入配置文件不需要重启

"设置窗口大小
set numberwidth=3          "行号栏的宽度
set columns=135           "初始窗口的宽度
set lines=30              "初始窗口的高度
winpos 520 180             "初始窗口的位置

"设置字体
set guifont=Consolas:h10
set guifontwide=Microsoft\ Yahei\ Mono:h10

"自动透明
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)


"设置vundle插件
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" 插件列表

"在输入()，""等需要配对的符号时，自动帮你补全剩余半个
"Bundle 'AutoClose'

"在VIM的编辑窗口树状显示文件目录
Bundle 'The-NERD-tree'

"Vim主题，护眼，舒适
Bundle 'altercation/vim-colors-solarized'
"设置使用solarized主题
set background=dark
colorscheme solarized
