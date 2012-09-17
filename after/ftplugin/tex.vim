"make the f1 key save-buffer key,
"for some reason it keeps being remaped by the vim-latex plugin
inoremap <buffer> <silent> <F1> <ESC>:wa<cr>
noremap <buffer> <silent> <F1> :wa<cr>

"imap <NL> <Plug>IMAP_JumpForward
imap <buffer><silent> <c-\><F9> <Plug>Tex_Completion


imap <c-s> <Plug>IMAP_JumpForward
nmap <c-s> <Plug>IMAP_JumpForward
vmap <c-s> <Plug>IMAP_JumpForward
vmap <c-s> <Plug>IMAP_DeleteAndJumpForward

"imap <c-l> <Plug>IMAP_JumpForward
""nmap <c-l> <Plug>IMAP_JumpForward
"vmap <c-l> <Plug>IMAP_JumpForward
"vmap <c-l> <Plug>IMAP_DeleteAndJumpForward

"the following should help complete fig:whatever
set iskeyword+=:

"just for latex switch keys for ultisnip
"inoremap <silent> <C-L> <c-r>=UltiSnips_ExpandSnippetOrJump()<CR>
"snoremap <silent> <C-L> <esc>:call UltiSnips_ExpandSnippetOrJump()<CR>

if 0
  "imap <silent> <NL> <Plug>IMAP_JumpForward
  "nmap <silent> <NL> <Plug>IMAP_JumpForward
  "vmap <silent> <NL> <Plug>IMAP_JumpForward
  "vmap <silent> <NL> <Plug>IMAP_DeleteAndJumpForward

  "function! SelectImapOrUlti(pref, mode)
  "" pref: 0 for IMAP_Jumpfunc, 1 for UltiSnips_ExpandSnippetOrJump
  "" mode: 0 for insert, 1 for visual,...
  "let save_cursor = getpos(".")

  "if a:mode == 0
  "if a:pref == 0
  "call feedkeys("\<C-R>=IMAP_Jumpfunc('', 0)\<CR>")
  "else
  "call feedkeys("\<C-R>=UltiSnips_ExpandSnippetOrJump()\<CR>")
  "endif
  "elseif a:mode == 1
  "if a:pref == 0
  "call feedkeys("\<C-R>=IMAP_Jumpfunc('', 0)<CR>")
  ""call IMAP_Jumpfunc('', 0)
  "else
  ""call UltiSnips_ExpandSnippetOrJump()
  "call feedkeys("\<C-R>=UltiSnips_ExpandSnippetOrJump()")
  "endif
  "endif

  "let current_cursor = getpos(".")
  "if save_cursor == current_cursor
  "if a:mode == 0
  "if a:pref == 0
  "call feedkeys("\<C-R>=UltiSnips_ExpandSnippetOrJump()\<CR>")
  "else
  "call feedkeys("\<C-R>=IMAP_Jumpfunc('', 0)\<CR>")
  "endif
  "elseif a:mode == 1
  "if a:pref == 0
  "call UltiSnips_ExpandSnippetOrJump()
  "else
  "call IMAP_Jumpfunc('', 0)
  "endif
  "endif
  "endif
  "return ''
  "endfunction
  let g:moved = 0
  let g:called_imap = 0
  let g:called_ulti = 0
  function! DispLTXCF()
    let val = '[' . g:moved . ',' . g:called_ulti . ',' . g:called_imap
    let p = getline("'z") - getline("'y")
    let val .= printf("[%d,%d,%d,%d]", p[0], p[1], p[2], p[3] )
    let val .= ']'
    return val
  endfunction

  function! SelectImapOrUlti(pref)
    " pref: 0 for IMAP_Jumpfunc, 1 for UltiSnips_ExpandSnippetOrJump
    " mode: 0 for insert, 1 for visual,...
    normal mz
    let g:moved = 0
    let g:called_imap = 0
    let g:called_ulti = 0

    let save_cursor = getpos("'z")
    let g:savepos = save_cursor

    if a:pref == 0
      silent call feedkeys("\<C-R>=IMAP_Jumpfunc('', 0)\<CR>")
      let g:called_imap = 1
    else
      silent call feedkeys("\<C-R>=UltiSnips_ExpandSnippetOrJump()\<CR>")
      let g:called_ulti = 1
    endif

    normal my
    let current_cursor = getpos("'y")
    let g:curpos = current_cursor
    if save_cursor == current_cursor
      if a:pref == 0
        silent call feedkeys("\<C-R>=UltiSnips_ExpandSnippetOrJump()\<CR>")
        let g:called_ulti = 2
      else
        silent call feedkeys("\<C-R>=IMAP_Jumpfunc('', 0)\<CR>")
        let g:called_imap = 2
      endif
    else
      let g:moved = 1
    endif
    return ''
  endfunction

  inoremap <silent> <buffer> <C-L> <C-R>=SelectImapOrUlti(0)<CR>
  vnoremap <silent> <buffer> <C-L> <ESC>:call SelectImapOrUlti(0)<CR>
  snoremap <silent> <buffer> <C-L> <ESC>:call SelectImapOrUlti(0)<CR>

  "inoremap <silent> <buffer> <NL> <C-R>=SelectImapOrUlti(0)<CR>
  "vnoremap <NL> :call SelectImapOrUlti(1)<CR>
  "snoremap <NL> :call SelectImapOrUlti(1)<CR>
  "nnoremap <NL> :call SelectImapOrUlti(1)<CR>
else
  inoremap <silent> <buffer> <C-L> <C-R>=IMAP_Jumpfunc('', 0)<CR>
endif

inoremap <silent> {{ {{<C-R>=UltiSnips_Anon('\\{ $1 \\}${0:<++>}', '{{', 'paren', "r")<cr>
inoremap <silent> $$ $$<C-R>=UltiSnips_Anon('$$1$${0:<++>}', '$$', 'dollar', "r")<cr>
inoremap <silent> ^^ ^^<C-R>=UltiSnips_Anon('^{$1}${0:<++>}', '\^\^', 'hat', "r")<cr>
inoremap <silent> __ __<C-R>=UltiSnips_Anon('_{$1}${0:<++>}', '__', 'unders', "r")<cr>


"inoremap <silent> <buffer> {{ __LTXSPlbraces<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>
"inoremap <silent> <buffer> $$ __LTXSPddolar<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>
"inoremap <silent> <buffer> ^^ __LTXSPdhat<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>
"inoremap <silent> <buffer> __ __LTXSPdunders<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>

"inoremap `1 snip1<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>
"inoremap `2 snip2<C-R>=UltiSnips_ExpandSnippetOrJump()<CR>

let b:SuperTabDefaultCompletionType = "\<C-N>"
execute "setlocal dictionary+=" . g:p0 . "/dictionaries/dictionary"
set complete+=k
setlocal textwidth=90

inoremap <silent> <buffer> <NL> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0) ?
      \ "" : IMAP_Jumpfunc('', 0)<CR>
snoremap <silent> <buffer> <C-L> <C-\><C-N>i<C-R>=IMAP_Jumpfunc('', 0)<CR>
vnoremap <silent> <buffer> <C-L> <C-\><C-N>i<C-R>=IMAP_Jumpfunc('', 0)<CR>
