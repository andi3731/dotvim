"=============================================================================
" FILE: sorter_rank.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu@gmail.com>
" Last Modified: 31 Dec 2012.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! unite#filters#sorter_rank#define() "{{{
  return s:sorter
endfunction"}}}

let s:sorter = {
      \ 'name' : 'sorter_rank',
      \ 'description' : 'sort by matched rank order',
      \}

function! s:sorter.filter(candidates, context) "{{{
  if a:context.input == '' || !has('float')
    return a:candidates
  endif

  " Initialize.
  for candidate in a:candidates
    let candidate.filter__rank = 0
  endfor

  for input in split(a:context.input, '\\\@<! ')
    let input = substitute(substitute(input, '\\ ', ' ', 'g'), '\*', '', 'g')

    " Calc rank.
    for candidate in a:candidates
      let candidate.filter__rank +=
            \ s:calc_rank_sequential_match(candidate.word, input)
    endfor

    for boundary_input in split(input, '\W')
      for candidate in a:candidates
        let candidate.filter__rank +=
              \ s:calc_rank_sequential_match(candidate.word, boundary_input)
      endfor
    endfor
  endfor

  return reverse(unite#util#sort_by(a:candidates, 'v:val.filter__rank'))
endfunction"}}}

function! s:calc_rank_sequential_match(word, input) "{{{
  let pos = strridx(a:word, a:input)
  if pos < 0
    return 0
  endif

  let rest = len(a:word) - len(a:input) - pos
  return str2float(pos == 0 ? '0.5' : '0.0') + str2float('20.0') / (rest + 1)
endfunction"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker
