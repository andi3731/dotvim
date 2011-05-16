
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start
set backspace=2
set esckeys

set autoindent		" always set autoindenting on

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set ignorecase
set showmatch           " show matching parenthesis
set laststatus=2
set cmdheight=1

set undofile

"" set backup. but all the backuped files will be 
"" placed in the directory specified by backupdir
set backup
if has("win32") 
  set backupdir^=$HOME\vimfiles\backup//
  set directory^=$HOME\vimfiles\swapdir//
  set undodir^=$HOME\vimfiles\undodir//
else
  set backupdir^=~/.vim/backup//
  set directory^=~/.vim/swapdir//
  set undodir^=$HOME/.vim/undodir//
endif

set expandtab
set softtabstop=2
set cindent shiftwidth=2
set scrolloff=9 "kepp 9 lines of contex when editing
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set wildmenu                    "wmnu:  enhanced ex command completion
set wildmode=longest:full,list:full  "wim:   helps wildmenu auto-completion
cabbrev tabh tab help
set nostartofline

" for being able to change buffers without saving
set hidden
set shortmess=a

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" select the text just last pasted or edited :)
nnoremap gp `[v`]

"cmap tb tab split +b

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " do the gams stuff here
  autocmd BufRead,BufNewFile *.gms,*.inc set syntax=gams filetype=gams
  autocmd BufRead,BufNewFile *.lst set syntax=gams filetype=gamslst

  "source .vimrc if changes are made (cool)
  autocmd BufWritePost $MYVIMRC so %

endif " has("autocmd")

set whichwrap=<,>,[,],h,l
let whichwrapOrig=&whichwrap
"the above is the same thing as 
"set ww=<,>,[,],h,l

" in insert mode make ctrl-a and ctrl-e behave like in emacs
"imap <C-A> <ESC>0i
imap <C-E> <ESC>$a

"map f2 to make
imap <F2> <ESC>:wa<cr>:Make <Up>
map  <F2> :wa<cr>:Make <Up>
command! -nargs=* Make write | make <args> | cwindow 6

"make the f1 key save-buffer key
imap <F1> <ESC>:wa<cr>
map <F1> :wa<cr>

"map  <f7> :tabp<cr>
"map  <s-f7> :bp<cr>
"map  <f8> :tabn<cr>
"map  <s-f8> :bn<cr>
"imap <f7> <esc>:bp<cr>
"imap <s-f7> <esc>:tabp<cr>
"imap <f8> <esc>:tabn<cr>
"imap <s-f8> <esc>:bn<cr>

map  <f4> :x<cr>
imap <f4> <esc>:wq<cr>

"map ,en :cnext<cr>
"map ,ep :cprevious<cr>
nnoremap  <c-\>a :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap  ,w <c-w>
nnoremap  ,, <c-w><c-w>

"map gl :bprevious<cr>
"
if &diff
  map <f4> :qa<cr>
  map <f5> :wqa!<cr>
  map <f6> :qa!<cr>
endif

let fortran_free_source = 1

set nopaste
"set pastetoggle=<S-F3>
set pastetoggle=<Leader>pt


"Set terminal capabilities before the colorscheme
"set t_Co=128
set t_Co=256
"set t_Co=88
"colorscheme bw_cs
"colorscheme desertink
"colorscheme ps_color_cs
colorscheme winter_cs


" setting the color in terminals
if !has("gui_running") && !has("win32")
endif


" some spelling related options mappings and functions
setlocal nospell
let g:togglespell = 0
function! ToggleSpell()
        if g:togglespell == 0
                setlocal spell spelllang=en_us
                let g:togglespell = 1
		echo "language = en_us"
        elseif g:togglespell == 1
	  	setlocal spell spelllang=pt
                let g:togglespell = 2
		echo "language = pt"
        else
                setlocal nospell
                let g:togglespell = 0
		echo "No spell Cheking"
        endif
endfunction
"map <F5> :call ToggleSpell()<cr>
"imap <F5> <C-O>:call ToggleSpell()<cr>
map <Leader>s :call ToggleSpell() <cr>

let g:relativenumber =2
"set relativenumber
function! ToogleRelativeNumber()
  if g:relativenumber == 0
    let g:relativenumber = 1
    set nonumber
    set relativenumber
  elseif g:relativenumber == 1
    let g:relativenumber = 2
    set norelativenumber
    set number
  else
    let g:relativenumber = 0
    set nonumber
    set norelativenumber
  endif
endfunction

map <Leader>tn :call ToogleRelativeNumber()<cr>
"set relativenumber

nnoremap <C-L> :nohl<CR><C-L>

"nmap <silent> <Leader>rg :!screen -p gams_run -X stuff \"gr
"let g:tmpa='screen -p gams_run -X stuff gr
"nmap  <Leader>rg :!screen -p gams_run -X stuff gr


"latex options
"let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -src-specials $*'
" in case we get errors when using compiling because of python set to 0
let g:Tex_UsePython=1
let g:Tex_MultipleCompileFormats='dvi,pdf'
"make vim load .tex files as latex files
"let g:tex_flavor='latex'
let g:tex_flavor='pdflatex'
"let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'pdflatex  -interaction=nonstopmode $*'
let g:Tex_IgnoreLevel = 3
if has("autocmd") && has("win32")
  autocmd BufRead,BufNewFile *.tex compiler tex
endif 

"for plugin in ftplugin/tex/tex_pdf.vim
let g:tex_pdf_map_keys = 0


"neocomplcache
"let g:neocomplcache_enable_at_startup = 1 

""tab complete
"function! InsertTabWrapper(direction)
    "let col = col('.') - 1
    "if !col || getline('.')[col - 1] !~ '\k'
        "return "\<tab>"
    "elseif "backward" == a:direction
        "return "\<c-p>"
    "else
        "return "\<c-n>"
    "endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
"inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

" for searching gams erros
map <Leader>e /\*\*\*\*.*$<cr>
map <Leader>v :view<cr>
" for clearing search views
map <Leader>ch :nohlsearch<CR>

"let NERDShutUp=1
"hi TabLine cterm=reverse

"map H :let &hlsearch = !&hlsearch<CR>

"set statusline=%-3.3n%t\ \ \ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=%-3.3n%t\ \ %h%m%r\ %y%=%l/%L\ %3c\ \ \ %P
"set statusline=%-3.3n%t\ \ \ %h%m%r\ %y%=%{strftime(\"[%H:%M%p]\")}\ \ \ \ \ %l/%L\ \ %3c\ \ \ %P
set statusline=%-3.3n%t\ \ \ %h%m%r%=[%{&ft}\ \ 
set statusline+=%{&ff}]\ \ \ %{strftime(\"[%H:%M%p]\")}
set statusline+=\ \ \ \ \ %l/%L\ \ %3c\ \ \ %P
"set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]
"set statusline+=\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]
"set statusline+=\ %=\ Line:%l\/%L\ Column:%c%V\ %P

set foldmethod=syntax
set title
set virtualedit+=block

com! Kwbd let kwbd_bn= bufnr("%")|enew|exe "bdel ".kwbd_bn|unlet kwbd_bn
"
"
"for now set scip compatible settings (3 spaces indentation for c files)
if has("autocmd")
  autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.c++ set shiftwidth=3
end " has("autocmd")

"if !has("win32") "for gnu grep, do some other setting for windows (maybe use cygwin?)
  "set grepprg=grep\ -nIH\ --exclude=tags\ --exclude=cscope.out
  "we change to setting from H to -h so the filename does not show up
  set grepprg=grep\ -nIh\ --exclude=tags\ --exclude=cscope.out
"endif


" ==================================================
" Python
" ==================================================
"au BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"
"for scip go up two folders
set tags=./tags,./TAGS,tags,TAGS,../tags,../../tags


"load eventual plugins here (the ones that would be really necessary)
let g:p0 = split(&runtimepath, ',')[0]
exec "source" . g:p0 . "/plugin/NERD_commenter.vim"