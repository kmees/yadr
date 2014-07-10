" ========================================
" General
" ========================================
" Breaks the line and adds an empty line in between
" if has("gui_running")
"   imap <S-Return> <Return><Esc>O
" else
"   au FileType javascript imap <buffer> <Return><Return> <Return><Esc>O
"   au FileType css imap <buffer> <Return><Return> <Return><Esc>O
" endif

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>

" Swap ; and :
nnoremap ; :

" ========================================
" LiveScript
" ========================================
" Word list
imap <C-H> <[  ]><ESC>2hi


" ========================================
" Fugitive
" ========================================
nnoremap <silent> ,gs :Gstatus<CR>
nnoremap <silent> ,gw :Gwrite<CR>
nnoremap <silent> ,gc :Gcommit<CR>


" ========================================
" (j)ump and (e)dit
" ========================================
nnoremap <leader>ja :CtrlP app/styles<CR>
nnoremap <leader>jc :CtrlP app/*scripts/controllers<CR>
nnoremap <leader>jd :CtrlP app/*scripts/directives<CR>
nnoremap <leader>jf :CtrlP app/*scripts/filters<CR>
nnoremap <leader>jl :CtrlP app/locales<CR>
nnoremap <leader>js :CtrlP app/*scripts/services<CR>
nnoremap <leader>jt :CtrlP test/spec<CR>
nnoremap <leader>jv :CtrlP app/views<CR>

nnoremap <leader>eg :e Gruntfile.*<CR>
nnoremap <leader>ek :e karma.conf.js<CR>
nnoremap <leader>ep :e package.json<CR>
nnoremap <leader>eb :e bower.json<CR>
nnoremap <leader>er :e readme.*<CR>

" ========================================
" Visual Drag
" ========================================
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()
