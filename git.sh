#!/bin/bash

set -e

# git autocomplete
cp ./.git-completion.bash ~

echo "if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
" >> ~/.bash_profile 

# global git ignore
cp ./.gitignore ~

git config --global core.excludesfile ~/.gitignore

# git aliases
git config --global alias.aliases "config --get-regexp '^alias\.'"
git config --global alias.recent "log --decorate --oneline -20"
git config --global alias.recommit "commit --amend --no-edit"
git config --global alias.uncommit "reset --soft HEAD~1"
git config --global alias.wipit "commit -am 'WIP'"
git config --global alias.unstage "reset HEAD --"
git config --global alias.that-shit-outta-here "!git pull --all && git fetch -p && git branch --merged | grep -v ^* | grep -iv master | grep -iv dev | xargs -n 1 git branch -d"

exit 0
