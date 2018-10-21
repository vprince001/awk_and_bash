#! /bin/bash

file_name=$1

first_line=$(cat $file_name | sed 's/./1/g' | sort -n | tail -n1 | sed 's/1/-/g')
lines=$(cat $file_name | sed 's/./1/g' | sort -n | tail -n1 | wc -c)
l_line=$(cat $1 | wc -l)
second_line=$(cat $file_name)

echo "+-$first_line+"

for (( i=1; i<=$l_line; i++ )){
  line=$(cat $file_name | head -n $i | tail -1)
  words=$(cat $file_name | head -n $i | tail -1 | wc -c) 
  
  for (( j=$words; j<=$lines; j++ )){
    line=$line" "
  }
  
  printf "|$line|"
  printf "\n"
}

echo "+$first_line-+"
