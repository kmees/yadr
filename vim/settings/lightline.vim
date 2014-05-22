let g:lightline = {
      \ 'colorscheme': has('gui_running') ? 'solarized' : '16color',
      \ 'active': {
      \   'left': [ [ 'mode' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \   'fugitive': '⭠ %{exists("*fugitive#head")?fugitive#head():""}',
      \ },
      \ 'component_function': {
      \   'myFilename': 'MyFilename'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! MyFilename() " {{{
  " Recalculate the filepath when cwd changes.

  let dirsep = has('win32') && ! &shellslash ? '\' : '/'
  let filepath = expand('%:p')

  if empty(filepath)
    return '[No Name]'
  endif

  let ret = ''

  let mod = (exists('+acd') && &acd) ? ':~:h' : ':~:.:h'
  let fpath = split(fnamemodify(filepath, mod), dirsep)
  let fpath_shortparts = map(fpath[-3:-2], 'v:val[0]')
  let ret = join(extend(fpath_shortparts, [fpath[-1]]), dirsep) . dirsep

  if ret == ('.' . dirsep)
    let ret = '[No Name]'
  else
    let ret = ret . expand('%:t')
  endif

  return ret
endfunction " }}}

" vim foldmethod=marker
