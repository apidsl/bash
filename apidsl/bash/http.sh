#!/bin/bash
URL=$1
[ -z "$URL" ] && IFS='' read -d '' -r URL
[ ! -z "$URL" ] && curl  --silent  $URL
