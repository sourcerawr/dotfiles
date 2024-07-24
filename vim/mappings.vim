" --------------------------------------------------
" Mappings file
" --------------------------------------------------

" because jj is easier to type
imap jj <Esc>
imap <CapsLock> <Esc>

" better navigation in wrap
nnoremap j gj
nnoremap k gk
nnoremap 0 h0
nnoremap $ g$

" buffer navigation
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>L

" easy indentation in visual mode
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <

"github
nnoremap <silent> <Leader>vgd :Gvdiffsplit<CR>

" accha fzf and Ag and Rg things and ack
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>ff :Ack<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

" vim command history
" Function to populate quickfix with command history
"function! s:CmdHistory()
  "let history = execute('history cmd')
  "let lines = split(history, "\n")[1:] " Remove the first line which is just a header
  "call setqflist(map(lines, '{"text": v:val}'))
  "copen
"endfunction

" Map leader q to show command history in quickfix
"nnoremap <leader>q :call <SID>CmdHistory()<CR>

" searchable command list
"function! s:AllCommands()
    "redir => cmd_output
    "silent! command
    "redir END
    
    "let cmd_list = split(cmd_output, "\n")
    "let cmd_list = cmd_list[1:] " Remove the header line
    
    "call setqflist(map(cmd_list, '{"text": v:val}'))
    "copen
    
    "" Set up search mapping in quickfix window
    "nnoremap <buffer> / :call <SID>SearchQuickfix()<CR>
"endfunction

"function! s:SearchQuickfix()
    "let search_term = input("Search for: ")
    "if search_term != ''
        "execute 'lvimgrep /' . search_term . '/j %'
        "lopen
    "endif
"endfunction

" Map leader c to show all commands in quickfix
"nnoremap <leader>c :call <SID>AllCommands()<CR>



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
