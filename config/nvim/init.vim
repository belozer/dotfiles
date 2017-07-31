set nocompatible
let mapleader=","

"
" PLUGINS
"

call plug#begin(expand('~/.config/nvim/plugged'))

" List plugins for install
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'ervandew/supertab'
    Plug 'Shougo/unite.vim'
    Plug 'Shougo/denite.nvim'
    Plug 'vim-scripts/ruscmd'
    " Plug 'itchyny/lightline.vim'
    " Plug 'gcmt/taboo.vim'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'Valloric/YouCompleteMe'

" Git
    Plug 'chrisbra/vim-diff-enhanced'
    Plug 'airblade/vim-gitgutter'
    " Plug 'vim-scripts/gitignore'
    Plug 'rdolgushin/gitignore.vim'
    Plug 'tpope/vim-fugitive'

" Themes
    " Plug 'mhartington/oceanic-next'
    " Plug 'jdkanani/vim-material-theme'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'kamwitsta/nordisk'
    " Plug 'icymind/NeoSolarized'
    " Plug 'jacoborus/tender.vim'
    Plug 'flazz/vim-colorschemes'
    " Plug 'arcticicestudio/nord-vim'

" CSS
    Plug 'wavded/vim-stylus'
    Plug 'hail2u/vim-css3-syntax'
    " Plug 'lepture/vim-css'

" JavaScript
    Plug 'othree/yajs.vim'
    Plug 'othree/es.next.syntax.vim'
    Plug 'heavenshell/vim-jsdoc'
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Find and Navigation
    Plug 'numkil/ag.nvim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/vimfiler.vim'

" Helpers
    Plug 'pbrisbin/vim-mkdir'
    Plug 'jiangmiao/auto-pairs'
    " Plug 'Townk/vim-autoclose'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'tpope/vim-eunuch'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-surround'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'matze/vim-move'
    Plug 'NLKNguyen/copy-cut-paste.vim'
    Plug 'Yggdroot/indentLine'
    " Plug 'thaerkh/vim-workspace'
    Plug 'sbdchd/neoformat'

call plug#end()

let g:taboo_tabline = 0

"
" SETTINGS
"

" Aliases
" cnoreabbrev TO TabooOpen
" cnoreabbrev TR TabooRename
" cnoreabbrev TC tabclose

" Theme settings
    " if (has("termguicolors"))
    "     set termguicolors
    " endif
    set  t_Co=256
    " let g:solarized_termcolors=256
    syntax on
    set background=dark
    colorscheme materialtheme
    hi! Normal guibg=NONE ctermbg=NONE
    let g:gitgutter_override_sign_column_highlight = 0
    let g:neosolarized_contrast = "hight"
    let g:neosolarized_visibility = "hight"
    let g:neosolarized_vertSplitBgTrans = 1
    let g:neosolarized_bold = 1
    let g:neosolarized_underline = 1
    let g:neosolarized_italic = 0
    " colorscheme blackbeauty
    " colorscheme blackboard
    " let g:airline_theme='solarized'
    " colorscheme soda
    " colorscheme sierra
    " hi LineNr guibg=bg
    " set foldcolumn=2
    " hi foldcolumn guibg=bg
    " hi VertSplit guibg=NONE guifg=NONE
    " set encoding=utf8
    " set fillchars+=vert:\.
    " hi clear VertSplit
    " autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Green ctermbg=NONE

" GitGutter
    let g:gitgutter_enabled=0
    nnoremap <silent> <leader>d :GitGutterToggle<cr>

" Fix Styl file
autocmd BufNewFile,BufRead *.styl set filetype=sass

let g:vim_json_syntax_conceal = 0


set scrolljump=10
set ttyfast
set lazyredraw
set noswapfile
set autoread
au CursorHold * checktim

nnoremap Q <Nop>

" Deoplete settings
    source ~/.config/nvim/settings/deoplete.vim

" VimFiler
    source ~/.config/nvim/settings/vimfiler.vim

" Status/Tab line
    " source ~/.config/nvim/settings/ligthline.vim
    " source ~/.config/nvim/settings/airline.vim
    source ~/.config/nvim/settings/statusline.vim

" Editor
    source ~/.config/nvim/settings/editor.vim

" set relativenumber
