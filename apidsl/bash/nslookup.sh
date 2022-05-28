#!/bin/bash
DOMAIN=
[ ! -t 0 ] && IFS='' read -d '' -r DOMAIN
[ -z "$DOMAIN" ] && DOMAIN=$1
[ -z "$DOMAIN" ] && echo "DOMAIN is empty" && exit
nslookup $DOMAIN
