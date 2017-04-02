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

    setlocal iskeyword+=-

    " Split direction
    set splitright
    set splitbelow

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

    " Create And Close tabs
    nnoremap <C-Up> :TabooOpen
    nnoremap <C-Down> :tabclose<CR>

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
    " nnoremap <C-h> <C-w>h
    " nnoremap <C-j> <C-w>j
    " nnoremap <C-k> <C-w>k
    " nnoremap <C-l> <C-w>l

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

" Copy-cut-past
    let g:copy_cut_paste_no_mappings = 1

    " Use your keymap
    nmap QC <Plug>CCP_CopyLine
    vmap QC <Plug>CCP_CopyText

    nmap QX <Plug>CCP_CutLine
    vmap QX <Plug>CCP_CutText

    nmap QV <Plug>CCP_PasteText


