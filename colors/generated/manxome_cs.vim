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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=188 gui=NONE guibg=#000000 guifg=#cccccc
    CSAHi Underlined term=underline cterm=NONE ctermbg=16 ctermfg=34 gui=NONE guibg=#000000 guifg=#00aa00
    CSAHi Ignore term=NONE cterm=NONE ctermbg=16 ctermfg=248 gui=NONE guibg=#000000 guifg=#aaaaaa
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=142 gui=NONE guibg=#000000 guifg=#aaaa00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=Blue
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=188 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=21 ctermfg=231 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=Brown
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=188 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=188 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=188 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi htmlItalic term=NONE cterm=NONE ctermbg=16 ctermfg=201 gui=NONE guibg=#000000 guifg=#ff00ff
    CSAHi htmlBold term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=21 ctermfg=231 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=188 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=231 gui=NONE guibg=#00aaaa guifg=#ffffff
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=Red
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=19 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=188 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=16 ctermfg=46 gui=NONE guibg=#000000 guifg=#00ff00
    CSAHi Constant term=underline cterm=NONE ctermbg=16 ctermfg=51 gui=NONE guibg=#000000 guifg=#00ffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ee
    CSAHi Statement term=bold cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#000000 guifg=#00aaaa
    CSAHi PreProc term=underline cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#000000 guifg=#00aaaa
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=252 gui=NONE guibg=#000000 guifg=#cccccc
    CSAHi Underlined term=underline cterm=NONE ctermbg=16 ctermfg=40 gui=NONE guibg=#000000 guifg=#00aa00
    CSAHi Ignore term=NONE cterm=NONE ctermbg=16 ctermfg=188 gui=NONE guibg=#000000 guifg=#aaaaaa
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=184 gui=NONE guibg=#000000 guifg=#aaaa00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=Blue
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=21 ctermfg=255 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=Brown
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=231 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi htmlItalic term=NONE cterm=NONE ctermbg=16 ctermfg=201 gui=NONE guibg=#000000 guifg=#ff00ff
    CSAHi htmlBold term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=21 ctermfg=255 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Visual term=reverse cterm=NONE ctermbg=44 ctermfg=255 gui=NONE guibg=#00aaaa guifg=#ffffff
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=Red
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=231 ctermfg=19 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=16 ctermfg=46 gui=NONE guibg=#000000 guifg=#00ff00
    CSAHi Constant term=underline cterm=NONE ctermbg=16 ctermfg=51 gui=NONE guibg=#000000 guifg=#00ffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ee
    CSAHi Statement term=bold cterm=NONE ctermbg=16 ctermfg=44 gui=NONE guibg=#000000 guifg=#00aaaa
    CSAHi PreProc term=underline cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=16 ctermfg=44 gui=NONE guibg=#000000 guifg=#00aaaa
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=252 gui=NONE guibg=#000000 guifg=#cccccc
    CSAHi Underlined term=underline cterm=NONE ctermbg=16 ctermfg=34 gui=NONE guibg=#000000 guifg=#00aa00
    CSAHi Ignore term=NONE cterm=NONE ctermbg=16 ctermfg=248 gui=NONE guibg=#000000 guifg=#aaaaaa
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=142 gui=NONE guibg=#000000 guifg=#aaaa00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=Blue
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=21 ctermfg=231 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=124 gui=NONE guibg=bg guifg=Brown
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi htmlItalic term=NONE cterm=NONE ctermbg=16 ctermfg=201 gui=NONE guibg=#000000 guifg=#ff00ff
    CSAHi htmlBold term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=SeaGreen
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=21 ctermfg=231 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=252 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=231 gui=NONE guibg=#00aaaa guifg=#ffffff
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=Red
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=18 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=252 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=16 ctermfg=46 gui=NONE guibg=#000000 guifg=#00ff00
    CSAHi Constant term=underline cterm=NONE ctermbg=16 ctermfg=51 gui=NONE guibg=#000000 guifg=#00ffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#0000ee
    CSAHi Statement term=bold cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#000000 guifg=#00aaaa
    CSAHi PreProc term=underline cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#000000 guifg=#00aaaa
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
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=58 gui=NONE guibg=#000000 guifg=#cccccc
    CSAHi Underlined term=underline cterm=NONE ctermbg=16 ctermfg=20 gui=NONE guibg=#000000 guifg=#00aa00
    CSAHi Ignore term=NONE cterm=NONE ctermbg=16 ctermfg=84 gui=NONE guibg=#000000 guifg=#aaaaaa
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=White
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=36 gui=NONE guibg=#000000 guifg=#aaaa00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=Blue
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=19 gui=bold guibg=bg guifg=Blue
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=19 gui=NONE guibg=#000000 guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=Red guifg=White
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=58 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=19 ctermfg=79 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=Brown
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=58 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=86 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=58 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=58 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi htmlItalic term=NONE cterm=NONE ctermbg=16 ctermfg=67 gui=NONE guibg=#000000 guifg=#ff00ff
    CSAHi htmlBold term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=SeaGreen
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=19 ctermfg=79 gui=NONE guibg=#0000ff guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=19 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=58 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=NONE ctermbg=16 ctermfg=76 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Visual term=reverse cterm=NONE ctermbg=21 ctermfg=79 gui=NONE guibg=#00aaaa guifg=#ffffff
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=Red
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=Yellow guifg=Black
    CSAHi Folded term=NONE cterm=NONE ctermbg=86 ctermfg=17 gui=NONE guibg=LightGrey guifg=DarkBlue
    CSAHi lCursor term=NONE cterm=NONE ctermbg=58 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=31 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=16 ctermfg=28 gui=NONE guibg=#000000 guifg=#00ff00
    CSAHi Constant term=underline cterm=NONE ctermbg=16 ctermfg=31 gui=NONE guibg=#000000 guifg=#00ffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=19 gui=NONE guibg=#000000 guifg=#0000ee
    CSAHi Statement term=bold cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#00aaaa
    CSAHi PreProc term=underline cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=16 ctermfg=21 gui=NONE guibg=#000000 guifg=#00aaaa
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
