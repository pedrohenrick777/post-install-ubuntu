" opcoes
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" tamanho espacos
set expandtab
set shiftwidth=4
set tabstop=4

" syntax
filetype plugin indent on
syntax on

" plugins
call plug#begin()
    " aparencia
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " utilidades
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'

    " tema
    Plug 'morhetz/gruvbox'

    " tmux
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme gruvbox

let g:airline_powerline_fonts = 1

let NERDTreeShowHidden=1
