" This scheme was created by CSApproxSnapshot
" on Thu, 27 May 2010

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=24 ctermfg=146 gui=NONE guibg=#183058 guifg=#b0b0e0
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=grey40
    CSAHi Error term=reverse cterm=NONE ctermbg=132 ctermfg=231 gui=NONE guibg=#b2377a guifg=white
    CSAHi Todo term=NONE cterm=bold ctermbg=97 ctermfg=112 gui=bold guibg=#622098 guifg=#54b900
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=yellowgreen
    CSAHi NonText term=bold cterm=bold ctermbg=23 ctermfg=153 gui=bold guibg=#0d2349 guifg=LightBlue
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=132 ctermfg=231 gui=NONE guibg=#b2377a guifg=white
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=109 ctermfg=229 gui=reverse guibg=khaki guifg=slategrey
    CSAHi Search term=reverse cterm=NONE ctermbg=243 ctermfg=224 gui=NONE guibg=#787878 guifg=wheat
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=153 gui=bold guibg=bg guifg=SkyBlue
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=239 gui=NONE guibg=bg guifg=grey30
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=146 ctermfg=24 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=146 ctermfg=24 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=bold ctermbg=182 ctermfg=239 gui=bold guibg=#b3b2df guifg=grey30
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=68 gui=bold guibg=bg guifg=#487cc4
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=67 ctermfg=16 gui=NONE guibg=#466292 guifg=black
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=67 ctermfg=237 gui=NONE guibg=#466292 guifg=grey22
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=67 ctermfg=244 gui=NONE guibg=#466292 guifg=grey50
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=81 gui=bold guibg=bg guifg=#38d9ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=17 ctermfg=153 gui=NONE guibg=#001146 guifg=lightblue
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=salmon
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=23 ctermfg=153 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=146 ctermfg=24 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#6279a0
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=140 gui=NONE guibg=bg guifg=#9b60be
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#b6a040
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#00ac55
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=117 gui=bold guibg=bg guifg=SkyBlue2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#20a0d0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=141 gui=bold guibg=bg guifg=#8070ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=23 ctermfg=153 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=153 ctermfg=fg gui=NONE guibg=LightBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=LightCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=60 ctermfg=189 gui=NONE guibg=#183058 guifg=#b0b0e0
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=grey40
    CSAHi Error term=reverse cterm=NONE ctermbg=169 ctermfg=255 gui=NONE guibg=#b2377a guifg=white
    CSAHi Todo term=NONE cterm=bold ctermbg=98 ctermfg=112 gui=bold guibg=#622098 guifg=#54b900
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=yellowgreen
    CSAHi NonText term=bold cterm=bold ctermbg=24 ctermfg=195 gui=bold guibg=#0d2349 guifg=LightBlue
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=169 ctermfg=255 gui=NONE guibg=#b2377a guifg=white
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=145 ctermfg=229 gui=reverse guibg=khaki guifg=slategrey
    CSAHi Search term=reverse cterm=NONE ctermbg=243 ctermfg=230 gui=NONE guibg=#787878 guifg=wheat
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=159 gui=bold guibg=bg guifg=SkyBlue
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=239 gui=NONE guibg=bg guifg=grey30
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=189 ctermfg=60 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=231 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=189 ctermfg=60 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=bold ctermbg=189 ctermfg=239 gui=bold guibg=#b3b2df guifg=grey30
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=111 gui=bold guibg=bg guifg=#487cc4
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=103 ctermfg=16 gui=NONE guibg=#466292 guifg=black
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=103 ctermfg=237 gui=NONE guibg=#466292 guifg=grey22
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=103 ctermfg=145 gui=NONE guibg=#466292 guifg=grey50
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=87 gui=bold guibg=bg guifg=#38d9ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=18 ctermfg=195 gui=NONE guibg=#001146 guifg=lightblue
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=salmon
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=24 ctermfg=195 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=189 ctermfg=60 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#6279a0
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=176 gui=NONE guibg=bg guifg=#9b60be
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#b6a040
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#00ac55
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=159 gui=bold guibg=bg guifg=SkyBlue2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#20a0d0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#8070ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=24 ctermfg=195 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=195 ctermfg=fg gui=NONE guibg=LightBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=231 ctermfg=21 gui=bold guibg=LightCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=23 ctermfg=146 gui=NONE guibg=#183058 guifg=#b0b0e0
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=grey40
    CSAHi Error term=reverse cterm=NONE ctermbg=132 ctermfg=231 gui=NONE guibg=#b2377a guifg=white
    CSAHi Todo term=NONE cterm=bold ctermbg=54 ctermfg=70 gui=bold guibg=#622098 guifg=#54b900
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=113 gui=NONE guibg=bg guifg=yellowgreen
    CSAHi NonText term=bold cterm=bold ctermbg=17 ctermfg=152 gui=bold guibg=#0d2349 guifg=LightBlue
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=132 ctermfg=231 gui=NONE guibg=#b2377a guifg=white
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=66 ctermfg=222 gui=reverse guibg=khaki guifg=slategrey
    CSAHi Search term=reverse cterm=NONE ctermbg=243 ctermfg=223 gui=NONE guibg=#787878 guifg=wheat
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=116 gui=bold guibg=bg guifg=SkyBlue
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=239 gui=NONE guibg=bg guifg=grey30
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=146 ctermfg=23 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=146 ctermfg=23 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=bold ctermbg=146 ctermfg=239 gui=bold guibg=#b3b2df guifg=grey30
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=68 gui=bold guibg=bg guifg=#487cc4
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=60 ctermfg=16 gui=NONE guibg=#466292 guifg=black
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=60 ctermfg=237 gui=NONE guibg=#466292 guifg=grey22
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=60 ctermfg=244 gui=NONE guibg=#466292 guifg=grey50
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=81 gui=bold guibg=bg guifg=#38d9ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=17 ctermfg=152 gui=NONE guibg=#001146 guifg=lightblue
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=salmon
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=152 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=146 ctermfg=23 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#6279a0
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=97 gui=NONE guibg=bg guifg=#9b60be
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=143 gui=NONE guibg=bg guifg=#b6a040
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=35 gui=NONE guibg=bg guifg=#00ac55
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=111 gui=bold guibg=bg guifg=SkyBlue2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#20a0d0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=99 gui=bold guibg=bg guifg=#8070ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=17 ctermfg=152 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=152 ctermfg=fg gui=NONE guibg=LightBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=LightCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=58 gui=NONE guibg=#183058 guifg=#b0b0e0
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=grey40
    CSAHi Error term=reverse cterm=NONE ctermbg=49 ctermfg=79 gui=NONE guibg=#b2377a guifg=white
    CSAHi Todo term=NONE cterm=bold ctermbg=33 ctermfg=40 gui=bold guibg=#622098 guifg=#54b900
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=40 gui=NONE guibg=bg guifg=yellowgreen
    CSAHi NonText term=bold cterm=bold ctermbg=17 ctermfg=58 gui=bold guibg=#0d2349 guifg=LightBlue
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=Blue
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=49 ctermfg=79 gui=NONE guibg=#b2377a guifg=white
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=37 ctermfg=73 gui=reverse guibg=khaki guifg=slategrey
    CSAHi Search term=reverse cterm=NONE ctermbg=82 ctermfg=74 gui=NONE guibg=#787878 guifg=wheat
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=43 gui=bold guibg=bg guifg=SkyBlue
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=grey30
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=58 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=86 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=58 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=bold ctermbg=58 ctermfg=81 gui=bold guibg=#b3b2df guifg=grey30
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#487cc4
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=37 ctermfg=16 gui=NONE guibg=#466292 guifg=black
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=37 ctermfg=80 gui=NONE guibg=#466292 guifg=grey22
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=37 ctermfg=82 gui=NONE guibg=#466292 guifg=grey50
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=27 gui=bold guibg=bg guifg=#38d9ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=17 ctermfg=58 gui=NONE guibg=#001146 guifg=lightblue
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=salmon
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=58 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=58 ctermfg=17 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=31 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#6279a0
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#9b60be
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b6a040
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#00ac55
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=43 gui=bold guibg=bg guifg=SkyBlue2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#20a0d0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=39 gui=bold guibg=bg guifg=#8070ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=17 ctermfg=58 gui=NONE guibg=#0d2349 guifg=lightblue
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=58 ctermfg=fg gui=NONE guibg=LightBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=63 ctermfg=19 gui=bold guibg=LightCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=17 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
endif

if 1
    delcommand CSAHi
endif