execute frawor#Setup('0.0', {'@/functions': '0.0',
            \     '@/decorators/altervars': '0.0'})
call s:_f.addaltspecial("test", function("winsaveview"), function("winrestview"), {'requiresarg': 1, 'acceptsarg': 1})
call s:_f.addextfunctions({'Function': {'function': function('tr'),
            \                         '@altervars': [['+test']]}})
