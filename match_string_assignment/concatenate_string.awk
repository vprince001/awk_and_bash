#! /usr/bin/awk -f

BEGIN{
  FS = " "
}

{
  if($1==1){
    array[substr($2,length($2)-3,4)]=$2
  }
  else{
    array[substr($2,1,4)]=array[substr($2,1,4)]""substr($2,5,3)
}
}

END{
  for(a in array){
    print array[a]
  }
}
