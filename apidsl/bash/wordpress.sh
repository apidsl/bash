#!/bin/bash
IFS='' read -d '' -r HTML
tag=$1
echo "${HTML}" | sed -n "/${tag}/{s/<${tag}[^<]*>\([^<]*\)<.*/\1/;p;q}"

