scriptencoding utf-8

if exists('g:loaded_fmtsql')
  finish
endif
let g:loaded_fmtsql = 1

let s:save_cpo = &cpo
set cpo&vim

command! Fmtsql call fmtsql#format_full()

let &cpo = s:save_cpo
unlet s:save_cpo
