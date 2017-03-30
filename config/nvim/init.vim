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

" CSS
    Plug 'wavded/vim-stylus'

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

call plug#end()


"
" SETTINGS
"

" Theme settings
    syntax on
    set termguicolors
    set background=dark
    colorscheme NeoSolarized
    hi! Normal ctermbg=NONE guibg=NONE
    " let g:gitgutter_override_sign_column_highlight = 0
    let g:neosolarized_contrast = "low"
    let g:neosolarized_visibility = "high"
    let g:neosolarized_vertSplitBgTrans = 1
    let g:neosolarized_bold = 1
    let g:neosolarized_underline = 1
    let g:neosolarized_italic = 0

" Editor settings
    " let &titlestring = expand("%:r")
    " set title
    set encoding=utf-8
    set fileformat=unix
    set ruler
    set cmdheight=2
    set lazyredraw
    set foldcolumn=0
    set mouse=n
    " set clipboard=unnamedplus
    set list
    set listchars=tab:>.,trail:.,extends:\#,nbsp:.

    " Shift text
    nnoremap > >>
    nnoremap < <<
    vnoremap > >gv
    vnoremap < <gv

    " Auto move cursor to end or start line
    set whichwrap+=h,l

    " Return to last edit position when opening files (You want this!)
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    " Tabs
    " change: Ctrl+Left, Ctrl+Right
    " move: Alt+Left, Alt+Right
    nnoremap <C-Left> :tabprevious<CR>
    nnoremap <C-Right> :tabnext<CR>
    nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
    nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

    set sessionoptions+=tabpages,globals

    " Disable hightlight after search
    nnoremap <esc> :noh<return><esc>
    nnoremap <esc>^[ <esc>^[

" Indents
    set autoindent
    set smartindent
    set smarttab
    set smartcase
    set ignorecase
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4

" Navigation in window buffers
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

" Fast move cursor
    noremap H ^
    noremap L g_
    noremap J 5j
    noremap K 5k

" Relative path settings
    map <Leader>n :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
    let g:ag_working_path_mode="r"

" Trim spaces before save
    autocmd BufWritePre * :%s/\s\+$//e

" GitGutter
    let g:gitgutter_enabled=0
    nnoremap <silent> <leader>d :GitGutterToggle<cr>

" Deoplete settings
    source ~/.config/nvim/settings/deoplete.vim

" Lightline
    source ~/.config/nvim/settings/ligthline.vim

" VimFiler
    source ~/.config/nvim/settings/vimfiler.vim

" Copy-cut-past
    let g:copy_cut_paste_no_mappings = 1

    " Use your keymap
    nmap QC <Plug>CCP_CopyLine
    vmap QC <Plug>CCP_CopyText

    nmap QX <Plug>CCP_CutLine
    vmap QX <Plug>CCP_CutText

    nmap QV <Plug>CCP_PasteText
