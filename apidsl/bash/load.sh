#!/bin/bash
FILENAME=$1
[ -z "$FILENAME" ] && IFS='' read -d '' -r FILENAME
[ ! -z "$FILENAME" ] && cat $FILENAME

