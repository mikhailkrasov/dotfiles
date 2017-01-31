set nocompatible
filetype on
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'distinguished'
Plugin 'imkmf/ctrlp-branches'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "✹",
	\ "Staged"    : "✚",
	\ "Untracked" : "✭",
	\ "Renamed"   : "➜",
	\ "Unmerged"  : "═",
	\ "Deleted"   : "✖",
	\ "Dirty"     : "✗",
	\ "Clean"     : "✔︎",
	\ "Unknown"   : "?"
	\ }
Plugin 'Xuyuanp/nerdtree-git-plugin'
au BufRead,BufNewFile *.liq set filetype=ruby
call vundle#end()


syntax on "подсветка синтаксиса.
colorscheme molokai
set guifont=Anonymous\ Pro\ for\ Powerline:h12

set nowrap "отказ переноса длинных строк.

set encoding=utf-8
set termencoding=utf-8 "кодировка текста по умолчанию.
set fileencoding=utf-8
set fileencodings=utf8,koi8r,cp1251,cp866,ucs-2le "список предполагаемых кодировок в порядке предпочтения.
set fileformat=unix

set t_Co=256
set ch=1 "количество строк в командной строке.
set mouse=a "поддержка мыши.
set laststatus=2 "наличие статусной строки.
set ruler "отображение номера строки, столбца в статусной строке.
set relativenumber "относительная нумерация строк.
set numberwidth=5 "ширина столбца нумерации строк.
set autoread "автоматическое обновление файла при изменении.
set cursorline "отображение активной строки.
set showcmd "отображение выполняемой команды.
set splitbelow "запуск нового окна снизу от текущего.
set splitright "запуск нового окна справа от текущего.
set list "включение обозначения скрытых символов.
set listchars=tab:>·,eol:$,trail:· " символы, обозначающие скрытые символы.
set tabstop=4 "размер табуляции.
set autoindent "копирует отступы с текущей строки при добавлении новой.
set wildmenu "варианты автодополнения командной строки над ней.
set hlsearch "подсветка поискового результата.
set noswapfile "не использовать своп-файл.
set nobackup "сохранение резервных копий.
hi Normal ctermbg=none
autocmd BufWinLeave *.* mkview "при закрытии файла сохранить вид.
autocmd BufWinEnter *.* silent loadview "при открытии файла восстановить сохраненный вид.
