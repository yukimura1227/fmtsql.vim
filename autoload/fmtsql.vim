scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! fmtsql#format_full() range
  " cut visual selected text
  silent normal gvx
  let cut_text = @@

  " write file temporary
  let tmpfile_origin = tempname()
  let cut_text_enc = iconv(cut_text, &encoding, 'utf-8')
  call writefile([cut_text_enc], tmpfile_origin)
  " echo tmpfile_origin

  " let format_command = 'cat ' . tmpfile_origin . ' | sqlformat -r -k upper --encoding "utf-8" -'
  let format_command = 'sqlformat -r -k upper --encoding "utf-8" ' . tmpfile_origin
  let format_text = system(format_command)
  " echo format_text

  let @" = format_text
  silent normal ""P

  " for debug
  " let dummy = input('please input any key')

  call delete(tmpfile_origin)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
