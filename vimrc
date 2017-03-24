syntax enable

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'

" color scheme
Plugin 'tomasr/molokai'

" comment plugins
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

imap jj <Esc>
set backspace=2
set number
set nowrap

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

set directory=/tmp "sets the (.swp) file directory
set list listchars=tab:>-
set expandtab
set shiftwidth=4
set softtabstop=4

