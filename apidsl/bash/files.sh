#!/bin/bash
PATH_START=
[ ! -t 0 ] && IFS='' read -d '' -r PATH_START
#[ -z "$1" ] && echo "PATH ARG is empty, (e.g.: *, /, .)" && exit
PATH_CURRENT=
[ ! -z "$PATH_START" ] && PATH_CURRENT=$(echo $PATH_START)
FILENAME=$1
[ ! -z "$FILENAME" ] && PATH_CURRENT=${PATH_CURRENT}${FILENAME}
#ls $PATH_CURRENT
#echo $PATH_CURRENT
find $PATH_CURRENT -maxdepth 0 -type f