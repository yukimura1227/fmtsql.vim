scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! fmtsql#format_full() range
  let tmp = @@
  silent normal gvy
  let selected = @@
  let @@ = tmp
  echo selected
  " current行を書き換えてみるサンプル
  call setline(line("."), selected)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
