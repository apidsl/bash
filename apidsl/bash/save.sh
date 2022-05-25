#!/bin/bash
IFS='' read -d '' -r HTML
echo "${HTML}" > $1

