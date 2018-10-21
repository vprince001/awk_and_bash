#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=1
  year=0
  fcount=0
  fyear=0
};

(NR==1){
  year=$2
}

($2==year){
  count++;
}

(count>fcount){
  fcount=count;
  fyear=year;
}

($2!=year){
  year=$2;
  count=1;
}

END{
  print fyear
}
