function SetNoWrap()
    set wrap!
endfunction

if has("gui_running") " GUI mode
    set guioptions-=T   " remove useless toolbar
    set guioptions+=c   " prefer console dialogs to popups
    set guioptions-=m " По умолчанию меню скрыто
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar
    set guifont=Monospace\ 9 " Устанавливаем шрифт
endif
if has('win32') || has('win64')                                                               
   let g:plugged_home = '~/.vim/plugged' 
   let g:python_folder = '~\AppData\Local\Programs\Python\Python37-32\python.exe'  
   let g:jedi_set1 = ""   
else                                                                                          
    let g:plugged_home = '~/.vim/plugged' 
    let g:python_folder = '/usr/bin/python3.7'
    let g:jedi_set1 = 3
    if empty(glob("~/.vim/autoload/plug.vim"))                                        
        execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'    
    endif
    if has('nvim')
        let g:plugged_home = '~/.config/nvim/plugged'                                               
        let g:python_folder = '/usr/bin/python3.7'
        if empty(glob("~/.config/nvim/autoload/plug.vim"))                                        
            execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'                                                        
        endif         
    endif
endif   

set autoindent "Включить автоотступы как предыдущие
set autochdir "Автоматически изменять текущий каталог
set backspace=indent,eol,start "Параметры Backspace ??
"set cuc cul "Курсор
"set cursorline "Выделите строку, находящуюся в данный момент под курсором.
set confirm "Отображение диалогового окна подтверждения при закрытии несохраненного файла.
set completeopt=longest,menuone,preview " better completion
set copyindent    " copy the previous indentation on autoindenting
set clipboard=unnamed "????????????????
set encoding=utf-8  " set vim encoding to UTF-8
set expandtab "табы на пробелы и отстпы по >>
set foldmethod=indent "manual, syntax, indent  метод фолдинга - вручную (для обычных файлов)
set foldlevel=99
" set guiheadroom=0 "Пустое пространство в нижней части окон gVim
set hidden "Скрыть файлы в фоновом режиме, а не закрывать их.
set history=1000 "увеличить предел отмены.
set hlsearch "Включаем подсветку выражения, которое ищется в тексте
set ignorecase "игрнорировать регистр при поиске
set iminsert=1 "Раскладка по умолчанию - английская
set incsearch "При поиске перескакивать на найденный текст в процессе набора строки
set mouse=a "Включить поддержку мыши
set mousehide "Спрятать курсор мыши когда набираем текст
set nobackup "Отключить создание бекапаа
set noerrorbells "отключить звуковой сигнал при ошибках.
set nolazyredraw "Отключить ленивую буферизацию
set noshowmatch "не подсвечивать закрывающуюся скобку
set noshowmode "убирает -- INSERT --
set noswapfile "Отключить создание свапа
set visualbell "Не мигать
set nowrapscan "Останавливать поиск при достижении конца файла
set nowritebackup "Отключить создание файлов бекапа на запись
set wrap! "перенос строки
set nrformats-=octal "Воспринимать восьмеричное как десятичное при увеличении чисел.
set number relativenumber "подвижные относительные номера строк
set scrolloff=4 "Количество строк экрана, которые нужно держать выше и ниже курсора.
set scrolljump=1 " minimal number of lines to scroll vertically
set sidescroll=1    " minimal number of columns to scroll horizontally
set sidescrolloff=4 " minimal number of columns to keep around the cursor
set shiftwidth=4 "Размер отступов по >>
set shiftround "отступ как предыдущий
set smartcase "включиь умный регистр
set smarttab "Более умные отступы при вставке их с помощью tab.
set softtabstop=4 "количество пробелов, которыми символ табуляции отображается при добавлении.
"set spell "включить проверку орфографии
set showtabline=0 "Отключаем панель табов (окошки FTW)
set t_vb= "Не пищать!
set tabstop=4 "количество пробелов, которыми символ табуляции отображается
set termencoding=utf-8 "Кодировка терминала
set title "заголовок окна, отражающий редактируемый файл.
set visualbell "Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set undolevels=1000 " boost undo levels
set whichwrap=b,s,<,>,[,],l,h "Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и
set wildignore+=.pyc,.swp "игнорировать файлы
set wrap linebreak nolist "Включить перенос строк
set wildmenu "Display command line’s tab complete options as a menu.

syntax on
syntax enable

call plug#begin(g:plugged_home)
Plug 'airblade/vim-gitgutter' "git simvols
Plug 'ap/vim-css-color' 
Plug 'bling/vim-airline' "цветная менюшка airline
Plug 'chriskempson/base16-vim' "Терминальные Темы ?
Plug 'easymotion/vim-easymotion' "изи моушен
Plug 'ervandew/supertab'  "супер таб
Plug 'davidhalter/jedi-vim'
Plug 'jonathanfilip/vim-lucius' "color sheme
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim' "не четкий поиск ctrl+p
Plug 'mattn/emmet-vim' 
Plug 'majutsushi/tagbar' "навигация по класам и функциям
Plug 'matze/vim-move' " переместить кусок кода Alt+J
Plug 'morhetz/gruvbox' "color sheme
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree' "дерево каталогов
Plug 'stevearc/vim-arduino'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive' "git
Plug 'tpope/vim-commentary'   "comment по gc
Plug 'terryma/vim-multiple-cursors'
Plug 'tell-k/vim-autopep8'
"Plug 'w0rp/ale' "Проверка синтаксиса  ??????????????????????
Plug 'Yggdroot/indentLine' "Красивые табы |¦
Plug 'vim-syntastic/syntastic' "c++
Plug 'xavierd/clang_complete' "c++
"Plug 'frazrepo/vim-rainbow' "dont work with *.vue
Plug 'xolox/vim-misc' "for colorschemes
Plug 'xolox/vim-colorscheme-switcher' "switche color
"Plug 'jiangmiao/auto-pairs' "авто кавычки
Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set wildignore=.git,.hg,
:au FocusLost * :wa

"<<<<<<<<<<<<<KEY<<<<<<<<<<<<<
imap jf <Esc>
let mapleader=','
let maplocalleader=","  " change local leader key to ,
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" window resizing
map <S-Left> <C-w><
map <S-Down> <C-w>-
map <S-Up> <C-w>+
map <S-Right> <C-w>>
noremap <silent> <F9> :cal VimCommanderToggle()<CR> "F3-view F4-edit F5-copy F6-move F7-create dir F8-del

nmap <C-t> :NERDTreeToggle<CR>
nmap <F12> :TagbarToggle<CR>
" map  <Leader> <Plug>(easymotion-prefix)
nmap  ' <Plug>(easymotion-s)
autocmd FileType python noremap <buffer> <F2> :call Autopep8()<CR>
inoremap <Esc> <Esc>:w<CR>
inoremap <leader>, <C-x><C-o>
" inoremap <C-o> <C-n>
" inoremap <leader>, <C-n><C-o>
nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gd :bd<cr>
"croll slightly faster
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
map <C-Up> <C-y>
map <C-Down> <C-e>
" move cursor wihout leaving insert mode
    inoremap <C-j> <C-o>j
    inoremap <C-k> <C-o>k
    inoremap <C-l> <C-o>l
" <leader>q quits the current window
nnoremap <silent> <leader>q :q<CR>
inoremap <silent> <leader>q <ESC>:q<CR>

" yank/paste to/from the OS clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>Y "+Y
noremap <silent> <leader>p "+p
noremap <silent> <leader>P "+P

"<C-Space> triggers completion in insert mode
inoremap <C-Space> <C-P>
if !has("gui_running")
      inoremap <C-@> <C-P>
  endif

noremap <silent>- :m+<CR> " move current line down
noremap <silent>_ :m-2<CR> " move current line up
vnoremap <silent>- :m >+1<CR>gv=gv " move visual selection down
vnoremap <silent>_ :m <-2<CR>gv=gv " move visual selection up

nnoremap <c-z> :u<CR>  "отменить проблемное сочетание клавиш
inoremap <c-z> <c-o>:u<CR>
nnoremap <space> za  " Enable folding with the spacebar
vmap <Tab> >gv
vmap <S-Tab> <gv
map <c-i> :call SetNoWrap()<cr>





"Arduino
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
let g:arduino_dir = '/home/ostap/Downloads/arduino-1.8.10/arduino'


" my_file.ino [arduino:avr:uno]
function! MyStatusLine()
  return '%f [' . g:arduino_board . ']'
endfunction
setl statusline=%!MyStatusLine()


"<<<<<<<<<NERDTree<<<<<<<<<<
" au VimEnter * NERDTreeToggle C:\BI\python.lnk
let NERDTreeIgnore=['\.pyc$'] "исключения
let g:NERDTreeChDirMode=2
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeHijackNetrw=0
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=20
" let NERDTreeQuitOnOpen=1

"<<<<<<<<<JEDI<<<<<<<<<<
let g:jedi#popup_select_first = 0
let g:jedi#force_py_version = jedi_set1
autocmd FileType python setlocal completeopt-=preview

" let g:jedi#auto_initialization = 1
" let g:jedi#completions_enabled = 0
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#smart_auto_mappings = 0
" let g:jedi#popup_on_dot = 0
" let g:jedi#completions_command = ""
" let g:jedi#show_call_signatures = "1"

"<<<<<<<<<COLOR<<<<<<<<<<
let g:rainbow_active = 1
colorscheme brogrammer
colorscheme gruvbox
" colorscheme lucius
set background=dark
    " let g:airline_theme='dark' "'powerlineish'
    " let g:airline#extensions#tabline#enabled = 1

if $COLORTERM == 'gnome-terminal'
      set t_Co=256 "может помочь с цветолвой политрой
    endif

let base16colorspace=256 "может помочь с цветолвой политрой
"colorscheme base16-default-dark "может помочь с цветолвой политрой
if has("termguicolors") "Поддержка True Color, если это доступно в терминале
    set termguicolors
endif

"<<<<<<<<<<<<<w0rp/Ale<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:ale_lint_on_enter = 5
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_linters = {'python': ['flake8']}
let g:ale_linters = {'python': ['Autopep8']}



"<<<<<<<<<<<<<<<< VUE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:vim_vue_plugin_load_full_syntax = 1
"let g:vim_vue_plugin_use_pug =1

"<<<<<<<<<<<<<<<<PYTHON MODE<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let python_highlight_all = 1
let g:python_host_prog = python_folder
let g:python3_host_prog = python_folder
let g:pymode_python = 'python3'
let g:pymode_run = 1
let g:pymode = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_indent = 1
    " Enable breakpoints plugin
    let g:pymode_breakpoint = 1
    let g:pymode_breakpoint_key = '<leader>b' 
    	"Documentation
    let g:pymode_doc = 1
    let g:pymode_doc_key = '<F1>'
	"Linting
    let g:pymode_rope = 0 	
    let g:pymode_syntax = 0
	" syntax highlighting
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    let g:pymode_syntax_space_errors = g:pymode_syntax_all
	" Don't autofold code
    let g:pymode_folding = 0
    	" replace pdb to ipdb ??????????????
    iab ipdb import ipdb; ipdb.set_trace()
let g:pymode_options_max_line_length = 88
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1
call pymode#default("g:pymode_lint_message", 0)
let g:pymode_quickfix_maxheight = 6
let g:pymode_lint_cwindow = 0
autocmd FileType python setlocal ts=4 sts=4 sw=4
iab utf! # -*- coding: utf-8 -*-
set completeopt=menuone  "menuone,noinsert
    let g:pymode_options = 0
    let g:pymode_lint_write = 0 "не проверять при каждом сохранении
    let g:pymode_folding = 0 "мне не нужен авто-фолдинг
    let g:pymode_rope_vim_completion = 0 "не использовать автодополнение rope
    set completeopt-=preview "убрать раздражающие всплывающие окна с документацией для omnicompletion:


