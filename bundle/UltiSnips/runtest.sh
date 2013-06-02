#!/bin/bash

# send ctrl-c and wq! to session
# start vim -u NONE
# run the actual test

screen -S vim -X stuff ':qa!vim -u NONE'
rm -f ./test.pyc
./test.py VerifyVimDict
