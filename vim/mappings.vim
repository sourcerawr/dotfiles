" --------------------------------------------------
" Mappings file
" --------------------------------------------------

" because jj is easier to type
imap jj <Esc>

" better navigation in wrap
nnoremap j gj
nnoremap k gk
nnoremap 0 h0
nnoremap $ g$

" easy indentation in visual mode
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <

"nerd tree things
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"tagbar things
nmap <leader>t :TagbarToggle<CR>

"for searching using dash.app with the plugin
"nnoremap <leader>ds :Dash <enter>

"for running selected python code
"autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:ter python2 "%"<CR>

"language server mappings using languageclient
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
"function LC_maps()
    "if has_key(g:LanguageClient_serverCommands, &filetype)
        "nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
        "nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
        "nnoremap <buffer> <silent> <leader>rr :call LanguageClient#textDocument_rename()<CR>
    "endif
"endfunctio:py import sys; print(sys.version_info)n

"autocmd FileType * call LC_maps()
