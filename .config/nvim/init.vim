"-----
"Vim - настройки
"-----
"Отступы
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"Нумерация
set number
"Подсветка синтаксиса кода
syntax on
set t_Co=256
"Отключение звука
set noerrorbells
set novisualbell
"Поиск
set ignorecase
set smartcase
set hlsearch
set incsearch
"Кодировка
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,cp1251
"Файлы
set nocompatible
filetype plugin indent on
"Перенос строк
set wrap
set linebreak
"Swap файлы
set nobackup
set noswapfile
"Русский язык
set keymap=russian-jcukenmac
set iminsert=0
set imsearch=0

"-----
"Plug - плагины | установка
"-----
call plug#begin('~/.config/nvim/plug')
Plug 'vim-airline/vim-airline'
Plug 'matze/vim-move'
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"-----
"Plug - плагины | настройка
"-----
"Установка темы для Airline
let g:airline_theme='deus' 
"Установки клавиши модификатора для move
let g:move_key_modifier = 'C'
"Настройка NerdTree
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nnoremap <C-t> :NERDTreeToggle<CR>
"Настройка Delimitmate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>,>:<"
