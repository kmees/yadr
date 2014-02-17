" ========================================
" General
" ========================================
" Breaks the line and adds an empty line in between
au FileType javascript imap <buffer> <Return><Return> <Return><Esc>O
au FileType css imap <buffer> <Return><Return> <Return><Esc>O

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


" ========================================
" (j)ump and (e)dit
" ========================================
map <leader>ja :CtrlP app/styles<CR>
map <leader>jc :CtrlP app/*scripts/controllers<CR>
map <leader>jd :CtrlP app/*scripts/directives<CR>
map <leader>jf :CtrlP app/*scripts/filters<CR>
map <leader>jl :CtrlP app/locales<CR>
map <leader>js :CtrlP app/*scripts/services<CR>
map <leader>jt :CtrlP test/spec<CR>
map <leader>jv :CtrlP app/views<CR>

map <leader>eg :e Gruntfile.*<CR>
map <leader>ek :e karma.conf.js<CR>
map <leader>ep :e package.json<CR>
map <leader>eb :e bower.json<CR>
map <leader>er :e readme.*<CR>
