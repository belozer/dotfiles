scriptencoding=utf-8

" vim-airline {
    " let g:airline_theme='qwq'
    " let g:airline_theme='ravenpower'
    let g:airline_theme='solarized'
    " let g:airline_theme='sol'
    " let g:Powerline_symbols='fancy'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#fnamecollapse = 1
    let g:airline#extensions#tabline#fnametruncate = 0
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
    let g:airline#extensions#default#section_truncate_width = {
                \ 'b': 79,
                \ 'x': 60,
                \ 'y': 88,
                \ 'z': 45,
                \ 'warning': 80,
                \ 'error': 80,
                \ }
    let g:airline#extensions#default#layout = [
                \ [ 'a', 'error', 'warning', 'b', 'c' ],
                \ [ 'x', 'y', 'z' ]
                \ ]

    " Distinct background color is enough to discriminate the warning and
    "
    " error information.
    let g:airline#extensions#ale#error_symbol = '•'
    let g:airline#extensions#ale#warning_symbol = '•'
    " }

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0

set noshowmode
