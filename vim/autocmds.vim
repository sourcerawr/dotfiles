" Autocmds file

" Nerdtree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

"To close nerdtree automatically
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

"cursor fix for all terminals
set guicursor=
autocmd VimLeave * set guicursor=a:hor20

" remember last position in file
autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$")
            \ | exe "normal g'\"" | endif

" check spellings in commit message and readme
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal spell

" vimrc specific
augroup vimScript " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC       " reload vimrc on save
augroup END " }

" html specific commands
autocmd filetype html setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
            \ textwidth=0                               " allow larger lines

" javascript specific commands
autocmd filetype javascript setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
autocmd filetype json setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent

autocmd filetype tex setlocal
            \ filetype=tex

"python specific commands
xnoremap <F5> :w !python<cr>
"works like a charm, this one
"nnoremap <F5> :w | !python %<cr>
"nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
"imap <F5> <Esc>:w<CR>:!clear;python %<CR>
"WTF NEITHER OF THEM ARE WORKING WITH NEW TABS OR BUFFERS, second one ain't
"working with anything -_-
