#!/bin/bash
IFS='' read -d '' -r HTML
#echo "<$foo>"
#IFS= read -r HTML
#echo "$HTML"
#exit
#URL=$1
tag=$1
#echo "${HTML}"
echo "${HTML}" | sed -n "/${tag}/{s/<${tag}[^<]*>\([^<]*\)<.*/\1/;p;q}"
#echo "${HTML}" | sed -n "/<${tag}>/,/<\/${tag}>/p"

#sed -n "/<title>/,/<\/title>/p" index.html
#HTML="${1:-/dev/stdin}"
#export OUTPUT
#[ ! -z "$URL" ] && OUTPUT=$URL

#[ ! -z "$URL" ] && echo "$HTML"
#[ ! -z "$URL" ] && echo "$URL"

