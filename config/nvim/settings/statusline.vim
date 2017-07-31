function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
" set statusline+=%{&ff}] "file format
" set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

" " Puts in the current git status
"     if count(g:pathogen_disabled, 'Fugitive') < 1
"         set statusline+=%{fugitive#statusline()}
"     endif
"
" " Puts in syntastic warnings
"     if count(g:pathogen_disabled, 'Syntastic') < 1
"         set statusline+=%#warningmsg#
"         set statusline+=%{SyntasticStatuslineFlag()}
"         set statusline+=%*
"     endif
"
set statusline+=\ %=                        " align left
set statusline+=%l/%L                       " line X of Y [percent of file]
set statusline+=\ :%c                    " current column
" set statusline+=\ Buf:%n                    " Buffer number

set noshowmode
