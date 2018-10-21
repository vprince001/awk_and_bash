#! /usr/bin/awk -f

BEGIN{
  FS="|"
  country=""
  pop=0
};

(NR==1){
  pop=$3;
  country=$1;
}

($3<pop){
  pop=$3;
  country=$1;
}

END{
  print country
}
