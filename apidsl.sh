#!/bin/bash

## EXAMPLE
# ./apidsl.sh example2.txt
# ./apidsl.sh "http("https://www.rezydent.de/").xpath("title")"
# ./apidsl.sh 'http("https://www.rezydent.de/").xpath("title")'

## CONFIG

INPUT_FILE=$1
INPUT_FOLDER=".apidsl"
COMMAND_FOLDER="apidsl"
#
INPUT_FTIME="$(date +%s).txt"
INPUT_FILE_PATH="$INPUT_FOLDER/$INPUT_FTIME"

if [ ! -f "$INPUT_FILE" ]; then
  # IF file not exist then create file with the input text
  echo "$1" >$INPUT_FILE_PATH
else
  # if file exist copy to folder
  cp $INPUT_FILE $INPUT_FILE_PATH
fi

CACHE_FILE="$INPUT_FILE_PATH.cache.txt"
BASH_FILE="$INPUT_FILE_PATH.sh"
#Create temporary file with new line in place
#cat $INPUT_FILE | sed -e "s/)/\n/" > $CACHE_FILE
DSL_HASH="#"
DSL_DOT="."
DSL_SEMICOLON=";"
DSL_LEFT_BRACE="("
DSL_RIGHT_BRACE=")"
DSL_RIGHT_BRACE_SEMICOLON=");"
DSL_RIGHT_BRACE_DOT=")."
DSL_NEW="\n"
DSL_EMPTY=""
#cat $INPUT_FILE | sed -e "s/${DSL_DOT}/${DSL_NEW}/" > $CACHE_FILE
#sed -i 's/${DSL_DOT}/${DSL_NEW}/' $INPUT_FILE
#cat $INPUT_FILE

## START
[ -z "$INPUT_FILE_PATH" ] && echo "INPUT_FILE is empty" && exit
echo "#!/bin/bash" >$BASH_FILE

# REMOVE COMMENTS
echo "" >$CACHE_FILE
while IFS= read -r line; do
  [ -z "$line" ] && continue
  #echo "${line:0:1}"
  [ "${line:0:1}" == "${DSL_HASH}" ] && continue
  echo "${line}" >>$CACHE_FILE
done <"$INPUT_FILE_PATH"

#cat $CACHE_FILE | sed "s/${DSL_RIGHT_BRACE_DOT}/${DSL_NEW}/g" >$CACHE_FILE
sed -i "s/${DSL_RIGHT_BRACE_DOT}/${DSL_NEW}/g" $CACHE_FILE
#cat $CACHE_FILE | sed "s/${DSL_RIGHT_BRACE}/${DSL_NEW}/g" > $CACHE_FILE
sed -i "s/${DSL_RIGHT_BRACE}/${DSL_NEW}/g" $CACHE_FILE
#sed -i "s/${DSL_DOT}/${DSL_NEW}/" $CACHE_FILE
# read line by line
while IFS= read -r line; do
  [ -z "$line" ] && continue
  #echo "${line:0:1}"
  #echo "${line}"

  IFS='('
  read -ra line <<<"$line"
  #[ "${line:0:1}" = "${DSL_HASH}" ] && break
  #echo ${line}
  index=0
  key=""
  value=""

  for i in "${line[@]}"; do
    #echo ${line}
    index=$((index + 1))
    i="$(echo -e "${i}" | tr -d '[:space:]')"
    #[ "${i}" == "${DSL_SEMICOLON}" ] && echo "" >> $BASH_FILE
    #echo "${i}"
    #[ "${i}" = "#" ] && break

    if [ $index -gt 2 ]; then
      echo $index "break"
    #  break
    fi

    if [ $index == 1 ]; then
      key=$i
    fi

  done

  [ "$key" = "$i" ] && echo -n "./$COMMAND_FOLDER/$key.sh" >>$BASH_FILE
  [ "$key" != "$i" ] && echo -n "./$COMMAND_FOLDER/$key.sh $i" >>$BASH_FILE
  echo -n " | " >>$BASH_FILE
done <"$CACHE_FILE"

#sed 's/|//g' $BASH_FILE
truncate -s -3 $BASH_FILE

#cat $CACHE_FILE
#cat $BASH_FILE
#echo ""
./$BASH_FILE
