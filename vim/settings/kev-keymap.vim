" ========================================
" General
" ========================================
" Breaks the line and adds an empty line in between
imap <S-Return> <Return><Esc>O

" NERDTree
nmap <leader>n :NERDTreeFocus<CR>
nmap <leader>nn :NERDTreeToggle<CR>

" ========================================
" LiveScript
" ========================================
" Word list
imap <C-L> <[  ]><ESC>2hi


" ========================================
" Fugitive
" ========================================
nnoremap <silent> ,gs :Gstatus<CR>
nnoremap <silent> ,gw :Gwrite<CR>
nnoremap <silent> ,gc :Gcommit<CR>
