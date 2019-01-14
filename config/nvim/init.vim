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
    Plug 'jdkanani/vim-material-theme'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'kamwitsta/nordisk'
    " Plug 'icymind/NeoSolarized'
    " Plug 'jacoborus/tender.vim'
    Plug 'rafi/awesome-vim-colorschemes'
    " Plug 'flazz/vim-colorschemes'
    " Plug 'arcticicestudio/nord-vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    Plug 'altercation/vim-colors-solarized'
    Plug 'lifepillar/vim-solarized8'

" CSS
    Plug 'iloginow/vim-stylus'
    Plug 'ap/vim-css-color'
    " Plug 'lilydjwg/colorizer'
    " Plug 'wavded/vim-stylus'
    " Plug 'hail2u/vim-css3-syntax'
    " Plug 'lepture/vim-css'

" JavaScript
    Plug 'othree/yajs.vim'
    Plug 'othree/es.next.syntax.vim'
    Plug 'heavenshell/vim-jsdoc'
    Plug 'briancollins/vim-jst'
    Plug 'leafgarland/typescript-vim'
    " Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
    " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Find and Navigation
    Plug 'numkil/ag.nvim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/vimfiler.vim'

" Helpers
    " Plug 'w0rp/ale'
    Plug 'bogado/file-line'
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
    if (has("termguicolors"))
        set termguicolors
    endif
    " set  t_Co=256
    " let g:solarized_termcolors=256
    syntax on
    set background=light
    colorscheme solarized
    " colorscheme materialtheme
    " colorscheme deus
    " colorscheme nord
    " colorscheme cobalt2
    " set background=dark
    " colorscheme PaperColor
    hi! Normal guibg=NONE ctermbg=NONE
    hi! NonText ctermbg=NONE guibg=NONE

    let g:gitgutter_override_sign_column_highlight = 0
    " let g:neosolarized_contrast = "hight"
    " let g:neosolarized_visibility = "hight"
    " let g:neosolarized_vertSplitBgTrans = 1
    " let g:neosolarized_bold = 1
    " let g:neosolarized_underline = 1
    " let g:neosolarized_italic = 0
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
"

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" let g:ctrlp_user_command = 'ag -g "%s"'
let g:ctrlp_lazy_update = 100
let g:ctrlp_working_path_mode = 'wa'


" AutoPairs
let g:AutoPairsMultilineClose=0

" Линейка
" set nu
" set rnu
" set nuw=4
" autocmd InsertEnter * set nornu
" autocmd InsertLeave * set rnu

set title
auto BufEnter * let &titlestring = expand("%:t")
