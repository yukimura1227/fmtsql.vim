scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! fmtsql#format_full() range
  silent normal x
  let cut_text = @@
  let @" = '--'.cut_text.'--'
  echo @"
  silent normal ""p
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
