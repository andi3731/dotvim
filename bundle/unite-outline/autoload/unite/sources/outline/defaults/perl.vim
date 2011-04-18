"=============================================================================
" File    : autoload/unite/sources/outline/defaults/perl.vim
" Author  : h1mesuke <himesuke@gmail.com>
" Updated : 2011-02-01
"
" Licensed under the MIT license:
" http://www.opensource.org/licenses/mit-license.php
"
"=============================================================================

" Default outline info for Perl
" Version: 0.0.7

function! unite#sources#outline#defaults#perl#outline_info()
  return s:outline_info
endfunction

let s:outline_info = {
      \ 'heading-1': unite#sources#outline#util#shared_pattern('sh', 'heading-1'),
      \ 'heading'  : '^\%(\s*\%(sub\s\+\h\|\%(package\|BEGIN\|CHECK\|INIT\|END\)\>\)\|__\%(DATA\|END\)__$\)',
      \ 'skip': {
      \   'header': unite#sources#outline#util#shared_pattern('sh', 'header'),
      \   'block' : ['^=\%(cut\)\@!\w\+', '^=cut'],
      \ },
      \}

function! s:outline_info.create_heading(which, heading_line, matched_line, context)
  let level = unite#sources#outline#
        \util#get_indent_level(a:context, a:context.heading_lnum) + 3
  let heading = {
        \ 'word' : a:heading_line,
        \ 'level': level,
        \ 'type' : 'generic',
        \ }

  if a:which == 'heading-1' && a:heading_line =~ '^\s*#'
    let heading.type = 'comment'
    let heading.level = unite#sources#outline#
          \util#get_comment_heading_level(a:context, a:context.matched_lnum)
  elseif a:which == 'heading'
    if a:heading_line =~ '^\s*package\>'
      let heading.word = substitute(heading.word, ';\s*$', '', '')
    else
      let heading.word = substitute(heading.word, '\s*{.*$', '', '')
      let heading.level += 1
    endif
  endif

  return heading
endfunction

" vim: filetype=vim
