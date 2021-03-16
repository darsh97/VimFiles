function! ToggleGUICruft()
    if &guioptions=='i'
        exec('set guioptions=imTrL')
    else
        exec('set guioptions=i')
    endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
" set guioptions=i

if has('python3')
    silent! python3 1
endif

if has('termguicolors')
    set termguicolors
endif

set pythonthreedll="C:\\New folder\\python38.dll"

colorscheme solarized8
syntax enable
filetype indent plugin on
set guifont=cascadia\ mono\ semibold:h10
set bg=light
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
syntax on
highlight clear
syntax enable
set wildignore=*.swp,*.bak,*.pyc,*.class,*.p,*~
set number
set ruler
set showmatch   
set noswapfile 
set expandtab
set mouse=a
set autowrite
set autoread
set backspace=indent,eol,start

set switchbuf=useopen
set laststatus=2
set splitbelow splitright


hi Normal guibg=NONE ctermbg=NONE


nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>

autocmd FileType python nnoremap <buffer> <F5> :update<bar>!python %<CR>


let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


set nocompatible               " turns off legacy vi mode


filetype off                   " required!

set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()
Bundle 'jpo/vim-railscasts-theme'
Bundle 'vim-airline/vim-airline'
Bundle 'mhinz/vim-startify'
Bundle 'gmarik/vundle'         
Bundle 'relastle/bluewery.vim'
Bundle 'scrooloose/nerdtree'   
filetype plugin indent on     
