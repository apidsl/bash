#!/bin/bash
COMMANDS=$1

# array to hold all lines read
#lines=()
IFS='' read -d '' -r list
while IFS= read -r line; do
    pwd
    echo "$line"
    #echo $line | ./apidsl.sh $COMMANDS
done <<< "$list"
