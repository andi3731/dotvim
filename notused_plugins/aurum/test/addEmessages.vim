redir => s:messages
messages
redir END
let s:meslines=filter(split(s:messages, "\n")[1:], 'v:val=~#"\\v^E\\d+\\:"')
if !empty(s:meslines)
    call WriteFile(['>>> Error Messages:']+
                \  s:meslines+
                \  ['<<< Error Messages^'])
endif
