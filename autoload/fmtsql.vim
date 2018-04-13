scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! fmtsql#format_full()
  echo "Hello World!"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
