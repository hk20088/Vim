
# Vim˵���ĵ�

�����¼һЩ����ʹ��Vim��һЩ���ɣ�����������������Լ���Vim�༭��  
vimrc�ļ����ҵ����ã��᲻�ϸ���  

## �������
ʹ�� `Vundle` ����Vim���  

��װ Vundle  
�� Git ������ִ���������
```
$ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

��д `vimrc` �����ļ����Ϳ���ʹ�� `Vundle` ��������
```
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
```

����������
```
:BundleInstall    #��װ���
:BundleInstall!   #���²��
:BundleClean      #ж�� `vimrc` �б��ﲻ���ڵĲ��
```

## ��������
MSYHMONO.ttf �������ļ�����win��˫����װ  

�� `vimrc` ��������´��뼴��  
```
set guifont=Consolas:h10
set guifontwide=Microsoft\ Yahei\ Mono:h10
```

## ��������
ֱ���� `vundle` ��װ��������Ȼ��ָ��ʹ�ô�����

�� `vimrc` ��������´��룬��ִ������ `BundleInstall` ����
```
Bundle 'altercation/vim-colors-solarized'
"����ʹ��solarized����
set background=dark
colorscheme solarized
```

## ���óɰ�͸��
vimtweak.dll ������͸���Ĳ����ֱ�ӷŵ� Vim �İ�װ·��  

�� `vimrc` ��������´��뼴��  
```
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)
```
���У���������ԽС��͸����Խ��

## �ָ��
**ˮƽ�ָ��**
```
:sp                 #ˮƽ�ָ��һ�����ڣ��򿪵�ǰ�ļ�
:sp [filename]      #ˮƽ�ָ��һ�����ڣ���filename �ļ�
```

**��ֱ�ָ��***
```
:vsp                #��ֱ�ָ��һ�����ڣ��򿪵�ǰ�ļ�
:vsp [filename}     #��ֱ�ָ��һ�����ڣ���filename �ļ�
```

**�ڴ��ڼ��л�**
ctrl+w �Ƿָ�ڲ�������Ŀ�ʼ��־  
```
ctrl+w+w          #�л����ڡ� ��סctrl�������ٴ� w ��
ctrl+w+j/k/l/h    #���������л�����
: only            #�رճ���ǰ�ļ�����������ļ�
```

## ���ǩҳ
```
:tabnew [filename]      #���±�ǩҳ��filename �ļ�
:tabc                   #�رյ�ǰ��tab
:tabo                   #�ر�����������tab
:tabs                   #�鿴���д򿪵�tab
:tabp/tabn              #�л���ǰ/��һ������
```
