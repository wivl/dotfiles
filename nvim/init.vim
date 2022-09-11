" ----- PLUGINS -----

call plug#begin('~/.local/share/nvim/plugged')

" -- vim-airline --
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" -- theme --
Plug 'morhetz/gruvbox'

" -- coc.vim --
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-prettier'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

" -- rust --
Plug 'rust-lang/rust.vim'

" -- nerd-tree --
Plug 'https://github.com/preservim/nerdtree'

" -- vim-terminal --
Plug 'https://github.com/tc50cal/vim-terminal'

" -- cpp --
Plug 'octol/vim-cpp-enhanced-highlight'

" -- auto-pair --
Plug 'jiangmiao/auto-pairs'

call plug#end()



" -- set theme --
colorscheme gruvbox
set background=dark



" ----- Options -----
" ----------------------------
set number
set relativenumber
" ----------------------------
syntax on
" ----------------------------
filetype plugin indent on
" ----------------------------

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" ----------------------------
set mouse=a

" ----------------------------
set encoding=UTF-8
set helplang=cn

" ----- KEY-MAPS -----
nnoremap <C-t> :NERDTreeToggle<CR>



" ----- COLOR-SETTINGS -----
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


