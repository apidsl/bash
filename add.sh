#!/bin/bash
# EXAMPLE
# ./add.sh https://github.com/letpath/bash bash letpath

# START
git_url=$1
[ -z "$git_url" ] && echo "git url is empty, example: https://github.com/letpath/bash" && exit
language=$2
[ -z "$language" ] && echo "language is empty, example: bash,php,js" && exit
name=$3
[ -z "$name" ] && echo "function name is empty, example: letpath,.." && exit

## Packages
cd "apidsl/$language" && git clone $git_url $name && cd .. && cd ..
echo "apidsl/$language/$name" >> .gitignore
apidsl.sh
del.sh
install.sh
loop.sh
readme.sh
update.sh


apidsl.sh
del.sh
install.sh
loop.sh
readme.sh
update.sh


apidsl.sh
del.sh
install.sh
loop.sh
readme.sh
update.sh


apidsl.sh
del.sh
install.sh
loop.sh
readme.sh
update.sh


