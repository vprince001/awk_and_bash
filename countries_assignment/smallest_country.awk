#! /usr/bin/awk -f

BEGIN{
  FS="|"
  country=""
  area=0
};

(NR==1){
  area=$4;
  country=$1;
}

($4<area){
  area=$4;
  country=$1;
}

END{
  print country
}
