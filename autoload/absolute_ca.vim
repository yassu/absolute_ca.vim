" command like <c-a> or <c-x> by using absolute value
" version: 0.1
" Author: yassu
" License: Apache 2.0

if exists('g:loaded_absoluteca')
  finish
endif
let g:loaded_absoluteca = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:move_to_num()
  " move to position which entered number
  " if there is number and succeed to move, return 1
  " else return -1
  let lnum = getpos('.')[1]
  let col = getpos('.')[2]
  let num_col = match(getline('.')[col - 1:], "[+-]\\?\\d")

  if num_col == -1
    return -1
  else
    let num_col += col - 1
  endif

  call cursor(lnum, num_col + 1)
  return 1
endfunction

function! absolute_ca#increment()
  let move_status = s:move_to_num()

  if move_status ==  -1
    return
  endif

  let n = str2nr(matchlist(getline('.')[col('.') - 1:], "\\d\\+")[0])
  let l = len(n)
  let val = printf("%0" . l . "d", n + 1)

  " substitute n to n + 1
  let line = getline('.')
  call setline(line('.'), line[:col('.') - 1 - 1] .
    \ substitute(line[col('.') - 1:], n, val, ""))
endfunction

function! absolute_ca#decrement()
  let move_status = s:move_to_num()

  if move_status ==  -1
    return
  endif

  let n = str2nr(matchlist(getline('.')[col('.') - 1:], "\\d\\+")[0])
  let l = len(n)

  " substitute n to n - 1
  let val = (n == 0)? 0: n - 1
  let val = printf("%0" . l . "d", val)
  let line = getline('.')
  call setline(line('.'), line[:col('.') - 1 - 1] .
    \ substitute(line[col('.') - 1:], n, val, ""))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
