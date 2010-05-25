
"
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Jul 18
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start
set backspace=2
set esckeys

set autoindent		" always set autoindenting on
set splitright          "split the window to the right
set splitbelow          "open the window to the bottom

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set showmatch           " show matching parenthesis
set laststatus=2
set cmdheight=1

"" set backup. but all the backuped files will be 
"" placed in the directory specified by backupdir
set backup
if has("win32") 
  set backupdir=$HOME\vimfiles\backup
  set directory=$HOME\vimfiles\swapdir
else
  set backupdir=~/.vim/backup
  set directory=~/.vim/swapdir
endif

set expandtab
set softtabstop=2
set cindent shiftwidth=2
set ignorecase
set scrolloff=9 "kepp 9 lines of contex when editing
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set nohlsearch 
set wildmenu                    "wmnu:  enhanced ex command completion
set wildmode=longest:full,list:full  "wim:   helps wildmenu auto-completion

" for being able to change buffers without saving
set hidden
set shortmess=a

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

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
command -nargs=* Make write | make <args> | cwindow 6

"make the f1 key save-buffer key
imap <F1> <ESC>:wa<cr>a
map <F1> :wa<cr>

map  <f7> :tabp<cr>
map  <s-f7> :bp<cr>
map  <f8> :tabn<cr>
map  <s-f8> :bn<cr>
imap <f7> <esc>:bp<cr>
imap <s-f7> <esc>:tabp<cr>
imap <f8> <esc>:tabn<cr>
imap <s-f8> <esc>:bn<cr>

map  <f4> :x<cr>
imap <f4> <esc>:wq<cr>

map ,en :cnext<cr>
map ,ep :cprevious<cr>

let fortran_free_source = 1

set nopaste
"set pastetoggle=<S-F3>
set pastetoggle=<Leader>pt


"Set terminal capabilities before the colorscheme
"set t_Co=128
set t_Co=256


" setting the color in terminals
if !has("gui_running")
  "on windows default is better
  "colorscheme evening
  "colorscheme default
  "colorscheme morning

  "colorscheme darkblue

  "colorscheme fruit 
  "colorscheme icansee
  "colorscheme greens
  "colorscheme freya
  "colorscheme 256_asu1dark
  colorscheme desert256
  "colorscheme desert
  "colorscheme autumn
  "colorscheme leo
  "colorscheme torte
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
map <F5> :call ToggleSpell()<cr>
imap <F5> <C-O>:call ToggleSpell()<cr>
map <Leader>s :call ToggleSpell() <cr>

"taglist options and keyboard mappings
"let Tlist_Close_On_Select = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Horiz_Window = 0
let Tlist_WinWidth = 20
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
map <F3> :TlistToggle<cr>
imap <F3> <ESC>:TlistToggle<cr>
" the following is useful to use configure ctags for using taglist with gams
let tlist_gams_settings='gams;e:equation;c:variable;m:model'
let tlist_gamslst_settings='asm;e:equation;c:variable;m:model;a:eqval'

"latex options
"let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -src-specials $*'
" in case we get errors when using compiling because of python set to 0
let g:Tex_UsePython=1
let g:Tex_MultipleCompileFormats='dvi,pdf'
"make vim load .tex files as latex files
let g:tex_flavor='latex'

"tab complete
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

" for searching gams erros
map <Leader>e /\*\*\*\*.*$<cr>
map <Leader>v :view<cr>

"let NERDShutUp=1
hi TabLine cterm=reverse

"map H :let &hlsearch = !&hlsearch<CR>

"use nested comments by default in NerdCommenter
let g:NERDDefaultNesting=1

"" changing colors with as suggested in the tip
let SwitchSchemesFiles = globpath("$VIMRUNTIME,$HOME/.vim","colors/*.vim")
let SwitchSchemesIndex = 0
function! SwitchSchemes()
        let sep="\n"
        if g:SwitchSchemesIndex == -1
                let g:SwitchSchemesIndex=0
        endif

        exe "source " . NextElement(g:SwitchSchemesFiles, sep, g:SwitchSchemesIndex)
        let g:SwitchSchemesIndex = NextIndex(g:SwitchSchemesFiles, sep, g:SwitchSchemesIndex + 1)
endfunction
map <f12>  :call SwitchSchemes()<CR>:echo g:colors_name<cr>


"set statusline=%-3.3n%t\ \ \ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline=%-3.3n%t\ \ %h%m%r\ %y%=%l/%L\ %3c\ \ \ %P

set foldmethod=syntax
set title

com! Kwbd let kwbd_bn= bufnr("%")|enew|exe "bdel ".kwbd_bn|unlet kwbd_bn
"set complete=.,w,b,u
set complete=.
