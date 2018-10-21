#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($8~"Korean"){
  count++;
}

END{
  print count
}

