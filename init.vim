call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/arcticicestudio/nord-vim'
"Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'morhetz/gruvbox' 
Plug 'neoclide/coc-prettier'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

"set cursorline
"highlight iCursor guifg=white guibg=steelblue

"autocmd InsertEnter,InsertLeave * set cul!

set termguicolors
set t_Co=256
colorscheme gruvbox
set background=dark

set number
syntax enable
filetype plugin indent on

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

set encoding=UTF-8

nnoremap <C-t> :NERDTreeToggle<CR>
