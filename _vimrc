set nocompatible          "��Ҫ����vi
filetype off              "��������ã�

set go=                   "ȡ���˵��͹�������set ��ʾһ�������ã�go��gui option����д�����ڿմ���ȡ��
set t_Co=256              "������ɫ������256
syntax enable             "�����﷨����
"autocmd! bufwritepost _vimrc source %         "�Զ����������ļ�����Ҫ����

"���ô��ڴ�С
set numberwidth=3          "�к����Ŀ��
set columns=135           "��ʼ���ڵĿ��
set lines=30              "��ʼ���ڵĸ߶�
winpos 520 180             "��ʼ���ڵ�λ��

"��������
set guifont=Consolas:h10
set guifontwide=Microsoft\ Yahei\ Mono:h10

"�Զ�͸��
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)


"����vundle���
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ����б�

"������()��""����Ҫ��Եķ���ʱ���Զ����㲹ȫʣ����
"Bundle 'AutoClose'

"��VIM�ı༭������״��ʾ�ļ�Ŀ¼
Bundle 'The-NERD-tree'

"Vim���⣬���ۣ�����
Bundle 'altercation/vim-colors-solarized'
"����ʹ��solarized����
set background=dark
colorscheme solarized
