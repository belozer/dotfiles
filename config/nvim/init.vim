set nocompatible
let mapleader=","

"
" PLUGINS
"

call plug#begin(expand('~/.config/nvim/plugged'))

" List plugins for install
    Plug 'Shougo/deoplete.nvim'
    Plug 'ervandew/supertab'
    Plug 'Shougo/unite.vim'
    Plug 'Shougo/denite.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'vim-scripts/ruscmd'
    Plug 'gcmt/taboo.vim'

" Git
    Plug 'chrisbra/vim-diff-enhanced'
    Plug 'airblade/vim-gitgutter'
    " Plug 'vim-scripts/gitignore'
    Plug 'tpope/vim-fugitive'

" Themes
    " Plug 'mhartington/oceanic-next'
    " Plug 'jdkanani/vim-material-theme'
    Plug 'altercation/vim-colors-solarized'
    Plug 'kamwitsta/nordisk'
    Plug 'icymind/NeoSolarized'
    Plug 'jacoborus/tender.vim'

" CSS
    Plug 'wavded/vim-stylus'
    Plug 'hail2u/vim-css3-syntax'
    " Plug 'lepture/vim-css'

" JavaScript
    Plug 'othree/yajs.vim'
    Plug 'othree/es.next.syntax.vim'
    Plug 'heavenshell/vim-jsdoc'
    Plug 'ternjs/tern_for_vim'
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Find and Navigation
    Plug 'numkil/ag.nvim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/vimfiler.vim'

" Helpers
    Plug 'pbrisbin/vim-mkdir'
    Plug 'Townk/vim-autoclose'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'tpope/vim-eunuch'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-surround'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'matze/vim-move'
    Plug 'NLKNguyen/copy-cut-paste.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'thaerkh/vim-workspace'
    " Plug 'blueyed/vim-diminactive'  " window focus

call plug#end()


"
" SETTINGS
"

" Deoplete settings
    source ~/.config/nvim/settings/deoplete.vim

" VimFiler
    source ~/.config/nvim/settings/vimfiler.vim

" Lightline
    source ~/.config/nvim/settings/ligthline.vim

" Editor
    source ~/.config/nvim/settings/editor.vim

" Aliases
cnoreabbrev TO TabooOpen
cnoreabbrev TR TabooRename
cnoreabbrev TC tabclose

" Theme settings
    " if (has("termguicolors"))
    "     set termguicolors
    " endif
    set  t_Co=256
    " let g:solarized_termcolors=256
    syntax on
    set background=dark
    colorscheme solarized
    " hi! Normal guibg=NONE ctermbg=NONE
    let g:gitgutter_override_sign_column_highlight = 0
    let g:neosolarized_contrast = "hight"
    let g:neosolarized_visibility = "hight"
    let g:neosolarized_vertSplitBgTrans = 1
    let g:neosolarized_bold = 1
    let g:neosolarized_underline = 1
    let g:neosolarized_italic = 0
    let g:lightline.colorscheme = 'solarized'

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

" Fix Styl files
autocmd BufNewFile,BufRead *.styl set filetype=sass

let g:vim_json_syntax_conceal = 0

