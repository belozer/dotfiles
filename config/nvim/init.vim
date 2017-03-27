set nocompatible
let mapleader=","

if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'Shougo/dein.vim'

" List plugins for install
Plug 'Shougo/deoplete.nvim'
Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'

Plug 'heavenshell/vim-jsdoc'
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/denite.nvim'

Plug 'mhartington/oceanic-next'
Plug 'jdkanani/vim-material-theme'
" Plug 'vimlab/neojs'
call plug#end()

" Use deoplete.
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1

syntax on 
" set background=dark
colorscheme OceanicNext

" Set opacity for background
hi! Normal ctermbg=NONE guibg=NONE

" autocmd BufReadPost *.js nnoremap <buffer> K :TernDoc<CR>
