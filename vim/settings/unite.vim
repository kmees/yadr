let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable = 1

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

autocmd FileType unite call s:unite_settings()

function! s:unite_settings()
  let b:SuperTabDisabled=1
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-i> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction

nnoremap <leader>uf :<C-u>Unite -buffer-name=files  -start-insert file_rec/async<cr>
nnoremap <leader>ug :<C-u>Unite -no-split -silent -buffer-name=ag grep:.<cr>
nnoremap <leader>ub :Unite -buffer-name=buffer -quick-match buffer<cr>
nnoremap <leader>uy :Unite -buffer-name=yank   -quick-match history/yank<cr>
