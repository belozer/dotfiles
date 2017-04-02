let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_force_overwrite_statusline = 1

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

" nnoremap <silent> <C-e>  :<C-u>VimFilerBufferDir -project<CR>
nnoremap <silent> <C-e> :VimFilerBufferDir -project<CR>
nnoremap <silent> <BS> :VimFilerBufferDir -find<CR>

nmap <buffer> N <Plug>(vimfiler_new_file)

