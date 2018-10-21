#! /bin/bash

file_name=$1

top_bot_line=$(cat $file_name | sed 's/./-/g' | sort -n | tail -n1)
maxlength=$(echo $top_bot_line | wc -c)
l_line=$(cat $file_name | wc -l)
content=$(cat $file_name)

echo "+-$top_bot_line+"

for (( i=1; i<=$l_line; i++ )){
  line=$(cat $1 | head -n $i | tail -1)
  words=$(echo $line | wc -c) 

  for (( j=$words; j<=$maxlength; j++ )){
    line=$line" "
  }

  printf "|$line|"
  printf "\n"
echo "+-$top_bot_line+"
}
