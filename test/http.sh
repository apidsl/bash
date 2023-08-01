#!/bin/bash
URL=$1
[ -z "$URL" ] && IFS='' read -d '' -r URL

#export OUTPUT
#[ ! -z "$URL" ] && OUTPUT=$(curl $URL)
[ ! -z "$URL" ] && curl  --silent  $URL
