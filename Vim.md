
# Vim说明文档

这里记录一些个人使用Vim的一些技巧，方便快速配置属于自己的Vim编辑器  
vimrc文件是我的配置，会不断更新  

## 插件管理
使用 `Vundle` 管理Vim插件  

安装 Vundle  
在 Git 命令行执行以下命令：
```
$ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

编写 `vimrc` 配置文件，就可以使用 `Vundle` 管理插件了
```
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
```

管理插件命令
```
:BundleInstall    #安装插件
:BundleInstall!   #更新插件
:BundleClean      #卸载 `vimrc` 列表里不存在的插件
```

## 设置字体
MSYHMONO.ttf 是字体文件，在win下双击安装  

在 `vimrc` 中添加以下代码即可  
```
set guifont=Consolas:h10
set guifontwide=Microsoft\ Yahei\ Mono:h10
```

## 设置主题
直接用 `vundle` 安装主题插件，然后指定使用此主题

在 `vimrc` 中添加以下代码，再执行命令 `BundleInstall` 即可
```
Bundle 'altercation/vim-colors-solarized'
"设置使用solarized主题
set background=dark
colorscheme solarized
```

## 设置成半透明
vimtweak.dll 是设置透明的插件，直接放到 Vim 的安装路径  

在 `vimrc` 中添加以下代码即可  
```
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)
```
其中，最后的数字越小，透明度越大

## 分割窗口
**水平分割窗口**
```
:sp                 #水平分割出一个窗口，打开当前文件
:sp [filename]      #水平分割出一个窗口，打开filename 文件
```

**垂直分割窗口***
```
:vsp                #垂直分割出一个窗口，打开当前文件
:vsp [filename}     #垂直分割出一个窗口，打开filename 文件
```

**在窗口间切换**
ctrl+w 是分割窗口操作命令的开始标志  
```
ctrl+w+w          #切换窗口。 按住ctrl键，按再次 w 键
ctrl+w+j/k/l/h    #上下左右切换窗口
: only            #关闭除当前文件以外的所有文件
```

## 多标签页
```
:tabnew [filename]      #在新标签页打开filename 文件
:tabc                   #关闭当前的tab
:tabo                   #关闭所有其它的tab
:tabs                   #查看所有打开的tab
:tabp/tabn              #切换到前/后一个窗口
```
