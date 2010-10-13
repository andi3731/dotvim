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
    CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=231 gui=NONE guibg=#110022 guifg=White
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=Yellow guifg=Blue
    CSAHi Function term=NONE cterm=NONE ctermbg=17 ctermfg=111 gui=NONE guibg=#110022 guifg=#7788ff
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=NONE cterm=NONE ctermbg=238 ctermfg=217 gui=NONE guibg=#444444 guifg=#ff9999
    CSAHi Directory term=NONE cterm=NONE ctermbg=17 ctermfg=46 gui=NONE guibg=#110022 guifg=Green
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=NONE cterm=bold ctermbg=226 ctermfg=19 gui=bold guibg=Yellow guifg=DarkBlue
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=231 ctermfg=21 gui=NONE guibg=White guifg=Blue
    CSAHi LineNr term=NONE cterm=NONE ctermbg=59 ctermfg=188 gui=NONE guibg=#334444 guifg=#cccccc
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=47 ctermfg=231 gui=NONE guibg=#00ff33 guifg=White
    CSAHi Question term=NONE cterm=NONE ctermbg=17 ctermfg=121 gui=NONE guibg=#110022 guifg=#66ff99
    CSAHi StatusLine term=bold cterm=bold ctermbg=64 ctermfg=231 gui=bold guibg=#336600 guifg=White
    CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=188 ctermfg=16 gui=NONE guibg=#cccccc guifg=Black
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=102 ctermfg=231 gui=NONE guibg=#666666 guifg=White
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=Magenta
    CSAHi Visual term=NONE cterm=NONE ctermbg=35 ctermfg=231 gui=NONE guibg=#00aa33 guifg=White
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=226 ctermfg=20 gui=NONE guibg=Yellow guifg=#0000cc
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=19 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=17 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=NONE cterm=NONE ctermbg=17 ctermfg=151 gui=NONE guibg=#110022 guifg=#99cc99
    CSAHi Constant term=NONE cterm=NONE ctermbg=17 ctermfg=214 gui=NONE guibg=#110022 guifg=#ff9900
    CSAHi Special term=NONE cterm=NONE ctermbg=17 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Identifier term=NONE cterm=NONE ctermbg=17 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Statement term=bold cterm=bold ctermbg=17 ctermfg=226 gui=bold guibg=#110022 guifg=Yellow
    CSAHi PreProc term=NONE cterm=NONE ctermbg=17 ctermfg=84 gui=NONE guibg=#110022 guifg=#33ff66
    CSAHi Type term=NONE cterm=NONE ctermbg=17 ctermfg=210 gui=NONE guibg=#110022 guifg=#ff5577
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=Grey guifg=DarkBlue
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=255 gui=NONE guibg=#110022 guifg=White
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=Red guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=Yellow guifg=Blue
    CSAHi Function term=NONE cterm=NONE ctermbg=17 ctermfg=147 gui=NONE guibg=#110022 guifg=#7788ff
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=NONE cterm=NONE ctermbg=238 ctermfg=224 gui=NONE guibg=#444444 guifg=#ff9999
    CSAHi Directory term=NONE cterm=NONE ctermbg=17 ctermfg=46 gui=NONE guibg=#110022 guifg=Green
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=255 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=NONE cterm=bold ctermbg=226 ctermfg=19 gui=bold guibg=Yellow guifg=DarkBlue
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=255 ctermfg=21 gui=NONE guibg=White guifg=Blue
    CSAHi LineNr term=NONE cterm=NONE ctermbg=66 ctermfg=252 gui=NONE guibg=#334444 guifg=#cccccc
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=231 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=255 ctermfg=17 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=47 ctermfg=255 gui=NONE guibg=#00ff33 guifg=White
    CSAHi Question term=NONE cterm=NONE ctermbg=17 ctermfg=122 gui=NONE guibg=#110022 guifg=#66ff99
    CSAHi StatusLine term=bold cterm=bold ctermbg=64 ctermfg=255 gui=bold guibg=#336600 guifg=White
    CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=#cccccc guifg=Black
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=241 ctermfg=255 gui=NONE guibg=#666666 guifg=White
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=Magenta
    CSAHi Visual term=NONE cterm=NONE ctermbg=41 ctermfg=255 gui=NONE guibg=#00aa33 guifg=White
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=Yellow guifg=#0000cc
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=231 ctermfg=19 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=17 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=NONE cterm=NONE ctermbg=17 ctermfg=194 gui=NONE guibg=#110022 guifg=#99cc99
    CSAHi Constant term=NONE cterm=NONE ctermbg=17 ctermfg=220 gui=NONE guibg=#110022 guifg=#ff9900
    CSAHi Special term=NONE cterm=NONE ctermbg=17 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Identifier term=NONE cterm=NONE ctermbg=17 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Statement term=bold cterm=bold ctermbg=17 ctermfg=226 gui=bold guibg=#110022 guifg=Yellow
    CSAHi PreProc term=NONE cterm=NONE ctermbg=17 ctermfg=84 gui=NONE guibg=#110022 guifg=#33ff66
    CSAHi Type term=NONE cterm=NONE ctermbg=17 ctermfg=211 gui=NONE guibg=#110022 guifg=#ff5577
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=Grey guifg=DarkBlue
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#110022 guifg=White
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=Yellow guifg=Blue
    CSAHi Function term=NONE cterm=NONE ctermbg=16 ctermfg=105 gui=NONE guibg=#110022 guifg=#7788ff
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=NONE cterm=NONE ctermbg=238 ctermfg=210 gui=NONE guibg=#444444 guifg=#ff9999
    CSAHi Directory term=NONE cterm=NONE ctermbg=16 ctermfg=46 gui=NONE guibg=#110022 guifg=Green
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=NONE cterm=bold ctermbg=226 ctermfg=18 gui=bold guibg=Yellow guifg=DarkBlue
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=231 ctermfg=21 gui=NONE guibg=White guifg=Blue
    CSAHi LineNr term=NONE cterm=NONE ctermbg=59 ctermfg=252 gui=NONE guibg=#334444 guifg=#cccccc
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=47 ctermfg=231 gui=NONE guibg=#00ff33 guifg=White
    CSAHi Question term=NONE cterm=NONE ctermbg=16 ctermfg=84 gui=NONE guibg=#110022 guifg=#66ff99
    CSAHi StatusLine term=bold cterm=bold ctermbg=58 ctermfg=231 gui=bold guibg=#336600 guifg=White
    CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=#cccccc guifg=Black
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=241 ctermfg=231 gui=NONE guibg=#666666 guifg=White
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=Magenta
    CSAHi Visual term=NONE cterm=NONE ctermbg=35 ctermfg=231 gui=NONE guibg=#00aa33 guifg=White
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=226 ctermfg=20 gui=NONE guibg=Yellow guifg=#0000cc
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=18 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=NONE cterm=NONE ctermbg=16 ctermfg=114 gui=NONE guibg=#110022 guifg=#99cc99
    CSAHi Constant term=NONE cterm=NONE ctermbg=16 ctermfg=208 gui=NONE guibg=#110022 guifg=#ff9900
    CSAHi Special term=NONE cterm=NONE ctermbg=16 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Identifier term=NONE cterm=NONE ctermbg=16 ctermfg=51 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Statement term=bold cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#110022 guifg=Yellow
    CSAHi PreProc term=NONE cterm=NONE ctermbg=16 ctermfg=83 gui=NONE guibg=#110022 guifg=#33ff66
    CSAHi Type term=NONE cterm=NONE ctermbg=16 ctermfg=204 gui=NONE guibg=#110022 guifg=#ff5577
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#110022 guifg=White
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=Red guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=19 gui=NONE guibg=Yellow guifg=Blue
    CSAHi Function term=NONE cterm=NONE ctermbg=16 ctermfg=39 gui=NONE guibg=#110022 guifg=#7788ff
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=NONE cterm=NONE ctermbg=80 ctermfg=69 gui=NONE guibg=#444444 guifg=#ff9999
    CSAHi Directory term=NONE cterm=NONE ctermbg=16 ctermfg=28 gui=NONE guibg=#110022 guifg=Green
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=NONE cterm=bold ctermbg=76 ctermfg=17 gui=bold guibg=Yellow guifg=DarkBlue
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=79 ctermfg=19 gui=NONE guibg=White guifg=Blue
    CSAHi LineNr term=NONE cterm=NONE ctermbg=80 ctermfg=58 gui=NONE guibg=#334444 guifg=#cccccc
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=86 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=28 ctermfg=79 gui=NONE guibg=#00ff33 guifg=White
    CSAHi Question term=NONE cterm=NONE ctermbg=16 ctermfg=45 gui=NONE guibg=#110022 guifg=#66ff99
    CSAHi StatusLine term=bold cterm=bold ctermbg=20 ctermfg=79 gui=bold guibg=#336600 guifg=White
    CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=58 ctermfg=16 gui=NONE guibg=#cccccc guifg=Black
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=81 ctermfg=79 gui=NONE guibg=#666666 guifg=White
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=Magenta
    CSAHi Visual term=NONE cterm=NONE ctermbg=20 ctermfg=79 gui=NONE guibg=#00aa33 guifg=White
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=76 ctermfg=18 gui=NONE guibg=Yellow guifg=#0000cc
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=86 ctermfg=17 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=31 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=NONE cterm=NONE ctermbg=16 ctermfg=41 gui=NONE guibg=#110022 guifg=#99cc99
    CSAHi Constant term=NONE cterm=NONE ctermbg=16 ctermfg=68 gui=NONE guibg=#110022 guifg=#ff9900
    CSAHi Special term=NONE cterm=NONE ctermbg=16 ctermfg=31 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Identifier term=NONE cterm=NONE ctermbg=16 ctermfg=31 gui=NONE guibg=#110022 guifg=Cyan
    CSAHi Statement term=bold cterm=bold ctermbg=16 ctermfg=76 gui=bold guibg=#110022 guifg=Yellow
    CSAHi PreProc term=NONE cterm=NONE ctermbg=16 ctermfg=29 gui=NONE guibg=#110022 guifg=#33ff66
    CSAHi Type term=NONE cterm=NONE ctermbg=16 ctermfg=69 gui=NONE guibg=#110022 guifg=#ff5577
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=17 gui=NONE guibg=Grey guifg=DarkBlue
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
