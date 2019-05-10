set nu
set ruler
set hlsearch
set clipboard+=unnamed
set noerrorbells
set backspace=indent,eol,start
set guifont=DejaVu\ Sans\ Mono\ 13
set showcmd
set cursorline
set cursorcolumn
set matchtime=5
set incsearch
syntax enable
syntax on
set vb t_vb=
set autoindent
set cindent
set ignorecase
set mouse=a
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set fencs=utf-8
set termencoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb18030
colorscheme gruvbox
set background=dark
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
filetype on 
filetype plugin indent on


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
call plug#end()


map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
map <F5> :call CompileRun()<CR>
map <space>h <C-w>h
map <space>j <C-w>j
map <space>k <C-w>k
map <space>l <C-w>l

func! CompileRun()
    exec ":w"
    if &filetype == 'c'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc
