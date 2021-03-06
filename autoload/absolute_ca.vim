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

" function! g:get_num()
"   " return list of string of number and col of starting of number
"   let col = col('.')
"   let line = getline('.')
"   let n = matchlist(line[col - 1:], "\\d\\+")[0]
"   while col > 0
"     let col -= 1
"     if index(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], line[col - 1]) != -1
"         " TODO: index(...)ではなく正規表現にした方が早い?
"       let n = line[col - 1] . n
"     else
"       return [n, col + 1]
"     endif
"   endwhile
"   return [n, col - 1]
" endfunction

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

  let val = n

  let line = getline('.')
  let val = printf("%0" . len(n) . "d", val + v:count1)
  call setline(line('.'), line[:col('.') - 1 - 1] .
    \ substitute(line[col('.') - 1:], n, val, ""))
endfunction

function! absolute_ca#decrement()
  let move_status = s:move_to_num()

  if move_status ==  -1
    return
  endif

  let n = str2nr(matchlist(getline('.')[col('.') - 1:], "\\d\\+")[0])

  " substitute n to n - 1
  let val = (n < v:count1)? 0: n - v:count1
  let val = printf("%0" . len(n) . "d", val)
  let line = getline('.')
  call setline(line('.'), line[:col('.') - 1 - 1] .
    \ substitute(line[col('.') - 1:], n, val, ""))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
