fun! CompileLivescript()
    if exists('g:CompileLive') && g:CompileLive == 1
      silent LiveScriptMake! -b | cwindow | redraw!
    endif
endfun

au BufWritePost *.ls call CompileLivescript()
au Filetype ls nnoremap <buffer> <leader>p :LiveScriptCompile watch vert<CR>
au Filetype ls nnoremap <buffer> <leader>r :LiveScriptRun<CR>
au Filetype ls source $HOME/.yadr/vim/settings/ls-mocha-syntax.vim
