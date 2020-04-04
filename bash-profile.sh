#!/bin/bash

set -e

echo "if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

ssh-add -K ~/.ssh/id_rsa >/dev/null

" > ~/.bash_profile

echo "set -o vi
alias bidness='curl \"http://www.buzzwordipsum.com/buzzwords/?format=text&paragraphs=1\" | xargs -0 say'
" > ~/.bashrc

exit 0
