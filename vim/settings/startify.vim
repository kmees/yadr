let g:startify_files_number = 8
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 0
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
let g:startify_enable_special      = 0
let g:startify_custom_header = [
  \ '  ______                      _         _____           _     _ ',
  \ ' |  ____|                    | |       |_   _|         (_)   | | ',
  \ ' | |__  __  ___ __   ___ _ __| |_ ___    | |  _ __  ___ _  __| | ___ ',
  \ ' |  __| \ \/ / ''_ \ / _ \ ''__| __/ __|   | | | ''_ \/ __| |/ _` |/ _ \ ',
  \ ' | |____ >  <| |_) |  __/ |  | |_\__ \  _| |_| | | \__ \ | (_| |  __/ ',
  \ ' |______/_/\_\ .__/ \___|_|   \__|___/ |_____|_| |_|___/_|\__,_|\___| ',
  \ '             | | ',
  \ '             |_| ',
  \ '',
  \ '',
\ ]

autocmd FileType startify setlocal buftype=

autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            \   NERDTree |
            \   execute "normal \<c-w>w" |
            \ endif
