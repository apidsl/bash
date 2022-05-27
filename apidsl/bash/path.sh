#!/bin/bash
# START
##[ -t 0 ] && echo "stdin PATH Content is empty (./)"
PATH_START=
[ ! -t 0 ] && IFS='' read -d '' -r PATH_START
#[ -z "$1" ] && echo "PATH ARG is empty, (e.g.: *, /, .)" && exit
PATH_CURRENT=
[ ! -z "$PATH_START" ] && PATH_CURRENT=${PATH_START}
PATH_END=$1
[ ! -z "$PATH_END" ] && PATH_CURRENT=${PATH_CURRENT}${PATH_END}
echo "$PATH_CURRENT"
