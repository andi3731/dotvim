execute frawor#Setup('0.0', {'autoload/frawor/options': '0.0'})
let s:_options={"test": {'merger': function('s:Eval')}}
call s:_f.getoption("test")
