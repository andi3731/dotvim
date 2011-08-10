"=============================================================================
" File    : autoload/unite/sources/outline/defaults/cpp.vim
" Author  : h1mesuke <himesuke@gmail.com>
" Updated : 2011-08-08
"
" Licensed under the MIT license:
" http://www.opensource.org/licenses/mit-license.php
"
"=============================================================================

" Default outline info for C++
" Version: 0.1.7

function! unite#sources#outline#defaults#cpp#outline_info()
  return s:outline_info
endfunction

let s:Ctags = unite#sources#outline#import('Ctags')
let s:Util  = unite#sources#outline#import('Util')

let s:outline_info = {
      \ 'heading_groups': {
      \   'namespace': ['namespace'],
      \   'type'     : ['class', 'enum', 'struct', 'typedef'],
      \   'function' : ['function'],
      \   'macro'    : ['macro'],
      \ },
      \
      \ 'not_match_patterns': [
      \   s:Util.shared_pattern('*', 'parameter_list'),
      \ ],
      \
      \ 'highlight_rules': [
      \   { 'name'   : 'type',
      \     'pattern': '/.*\ze: \(class\|enum\|struct\|typedef\)/' },
      \   { 'name'   : 'function',
      \     'pattern': '/\(operator\s\+\S\+\|\h\w*\)\ze\s*(/' },
      \   { 'name'   : 'macro',
      \     'pattern': '/.*\ze: macro/' },
      \   { 'name'   : 'parameter_list',
      \     'pattern': '/(.*)/' },
      \ ],
      \}

function! s:outline_info.extract_headings(context)
  return s:Ctags.extract_headings(a:context)
endfunction

" vim: filetype=vim
