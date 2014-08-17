"====[ Make the 101st column stand out ]====================
highlight ColorColumn ctermbg=16
call matchadd('ColorColumn', '\%81v', 100)

let g:used_javascript_libs = 'angularjs,underscore'

set isk+=-,$

au BufRead,BufNewFile *.master set ft=html
