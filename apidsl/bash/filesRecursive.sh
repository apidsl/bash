#!/bin/bash
PATH_START=
[ ! -t 0 ] && IFS='' read -d '' -r PATH_START
PATH_CURRENT=
[ ! -z "$PATH_START" ] && PATH_CURRENT=$(echo $PATH_START)
FILENAME=$1
find -L ${PATH_CURRENT} -name "${FILENAME}" -type f