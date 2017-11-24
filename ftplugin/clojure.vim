" let &makeprg=g:clojure_check_bin.' $* -file %'
" command! ClojureMake :execute ':make '.join(ClojureCheckArgs(bufnr('%')))
