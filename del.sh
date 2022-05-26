#!/bin/bash
# EXAMPLE
# ./del.sh bash letpath

# START
language=$1
[ -z "$language" ] && echo "language is empty, example: bash,php,js" && exit
name=$2
[ -z "$name" ] && echo "function name is empty, example: letpath,.." && exit

## Packages
rm -rf "apidsl/$language/$name"

