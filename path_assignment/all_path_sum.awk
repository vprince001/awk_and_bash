#! /usr/bin/awk -f

BEGIN{
  array_sum=0
  split(array_sum,all_path_sum,"")
  line_count=0
  path_sum=0  
}

{
split($0,line_elements," ")
path_sum=path_sum+line_elements[1]
}

{
  array_sum=
