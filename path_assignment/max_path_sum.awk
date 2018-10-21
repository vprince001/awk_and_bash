#! /usr/bin/awk -f

BEGIN{
  FS = " "
  path_sum=0
  largest_num=0
  index_val=1
}

(NR==1){
  path_sum=$0
}

(NR>1){
  split($0,numbers," ")
  if(numbers[index_val]>numbers[index_val+1]){
    path_sum=path_sum+numbers[index_val]
  }else{
    path_sum=path_sum+numbers[index_val+1]
    index_val=index_val+1
  }
}

END{
  print path_sum
}
